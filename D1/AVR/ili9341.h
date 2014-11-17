#ifndef ILI9341_H
#define ILI9341_H

// 8-bit parallel interface I

#define TFT_PCTRL	DDRA
#define TFT_WCTRL	PORTA
#define TFT_RCTRL	PINA
#define TFT_PDATA	DDRC
#define TFT_WDATA	PORTC
#define TFT_RDATA	PINC

#define TFT_CS	(1 << 0)	// Chip-select (0)
#define TFT_BLC	(1 << 1)	// Background light control (0)
#define TFT_RST	(1 << 2)	// Reset (0)
#define TFT_WR	(1 << 3)	// Parallel data write strobe (Rising)
#define TFT_RS	(1 << 4)	// Data(1) / Command(0) selection
#define TFT_RD	(1 << 5)	// Parallel data read strobe (Rising)
#define TFT_VSY	(1 << 6)	// VSYNC
#define TFT_FMK	(1 << 7)	// Frame mark

#include <avr/io.h>
#include <avr/cpufunc.h>
#include <util/delay.h>

class ili9341
{
public:
	enum Orientation {Landscape, Portrait, FlipLandscape, FlipPortrait, \
		BMPLandscape, BMPPortrait, BMPFlipLandscape, BMPFlipPortrait};

	static inline void init(void);
	static inline void idle(bool e) {cmd(0x38 + e);}
	static inline void sleep(bool e) {cmd(0x10 + e);}
	static inline void inversion(bool e) {cmd(0x20 + e);}

//protected:
	static inline void cmd(uint8_t dat);
	static inline void data(uint8_t dat);
	static inline void send(bool c, uint8_t dat);
	static inline uint8_t recv(void);
	static inline void mode(bool _recv);
	static inline void _setBGLight(bool ctrl);
	static inline void _setOrient(uint8_t o);
};

// Defined as inline to excute faster

#define LOW(b)	TFT_WCTRL &= ~(b)
#define HIGH(b)	TFT_WCTRL |= (b)
#define SEND() TFT_PDATA = 0xFF
#define RECV() do { \
	TFT_PDATA = 0x00; \
	TFT_WDATA = 0xFF; \
} while(0)

inline void ili9341::_setOrient(uint8_t o)
{
	cmd(0x36);			// Memory Access Control
	switch (o) {
	case Landscape:
		data(0x28);		// Column Address Order, BGR
		break;
	case Portrait:
		data(0x48);		// Column Address Order, BGR
		break;
	case FlipLandscape:
		data(0xE8);		// Column Address Order, BGR
		break;
	case FlipPortrait:
		data(0x88);		// Column Address Order, BGR
		break;
	case BMPLandscape:
		data(0x68);		// Column Address Order, BGR
		break;
	case BMPFlipLandscape:
		data(0xA8);		// Column Address Order, BGR
		break;
	case BMPPortrait:
		data(0xD8);		// Column Address Order, BGR
		break;
	case BMPFlipPortrait:
		data(0x18);		// Column Address Order, BGR
		break;
	}
}

inline void ili9341::cmd(uint8_t dat)
{
	LOW(TFT_RS);
	TFT_WDATA = dat;
	LOW(TFT_WR);
	HIGH(TFT_WR);
	HIGH(TFT_RS);
}

inline void ili9341::data(uint8_t dat)
{
	TFT_WDATA = dat;
	LOW(TFT_WR);
	HIGH(TFT_WR);
}

inline void ili9341::mode(bool _recv)
{
	if (_recv)
		RECV();
	else
		SEND();
}

inline void ili9341::send(bool c, uint8_t dat)
{
	if (c)
		cmd(dat);
	else
		data(dat);
}

inline uint8_t ili9341::recv(void)
{
	unsigned char dat;
	LOW(TFT_RD);
	_NOP();
	dat = TFT_RDATA;
	HIGH(TFT_RD);
	return dat;
}

inline void ili9341::_setBGLight(bool ctrl)
{
	if (ctrl)
		TFT_WCTRL |= TFT_BLC;
	else
		TFT_WCTRL &= ~TFT_BLC;
}

inline void ili9341::init(void)
{
	uint8_t c;
	uint16_t r;

	MCUCR |= 0x80;			// Disable JTAG
	MCUCR |= 0x80;			// Thanks to someone point that out

	TFT_PCTRL = 0xFF & ~TFT_FMK;
	TFT_WCTRL = 0xFF & ~TFT_BLC;	// Disable background light
	RECV();
	LOW(TFT_RST);			// Hardware reset
	LOW(TFT_CS);
	HIGH(TFT_WR);
	HIGH(TFT_RD);
	HIGH(TFT_RS);
	HIGH(TFT_VSY);
	_delay_us(10);			// Min: 10us
	HIGH(TFT_RST);
	_delay_ms(120);
	SEND();
	cmd(0x28);		// Display OFF
	cmd(0x11);		// Sleep Out
	_delay_ms(120);
	cmd(0x34);		// Tearing Effect Line OFF
	cmd(0x38);		// Idle Mode OFF
	cmd(0x13);		// Normal Display Mode ON
	cmd(0x20);		// Display Inversion OFF
	cmd(0x3A);		// COLMOD: Pixel Format Set
	data(0x55);		// 16 bits/pixel
	cmd(0x36);		// Memory Access Control
	data(0x48);		// Column Adress Order, BGR
	cmd(0x2C);		// Memory Write
	for (r = 0; r < 320; r++)	// Black screen
		for (c = 0; c < 240; c++) {
			data(0x00);
			data(0x00);
			data(0x00);
		}
	cmd(0xB1);		// Frame Rate control, normal
	data(0x00);		// Faster
	data(0x18);
	cmd(0xB3);		// Frame Rate control, partial
	data(0x00);		// Faster
	data(0x18);
	cmd(0x29);		// Display On
}

#undef LOW
#undef HIGH
#undef SEND
#undef RECV

#endif
