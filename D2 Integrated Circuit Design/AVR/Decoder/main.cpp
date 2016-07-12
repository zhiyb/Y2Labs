#include <avr/io.h>
#include <stdio.h>
#include <util/delay.h>
#include "tft.h"
#include "rgbconv.h"

#define DEC_CLK		_BV(7)	// P1.7
#define DEC_DSTROBE	_BV(5)	// P4.3
#define DEC_DDATA	_BV(4)	// P4.4

#define DEC_DREADY	_BV(4)	// P3.4
#define DEC_DD0		_BV(0)	// P3.0
#define DEC_DD1		_BV(1)	// P3.1
#define DEC_DD2		_BV(2)	// P3.2
#define DEC_DD3		_BV(3)	// P3.3
#define DEC_DVALID	_BV(6)	// P3.6
#define DEC_DERROR	_BV(5)	// P3.5

#define DEC_ERRBIT	_BV(7)
#define DEC_ERR(d)	(d & DEC_ERRBIT)
#define DEC_VALID(d)	(d != 0xFF)
#define DEC_TRANSERRBIT	_BV(6)
#define DEC_TRANSERR(d)	(d & DEC_TRANSERRBIT)

tft_t tft;

uint8_t hwDecoder(uint8_t data)
{
	for (uint8_t i = 0; i < 8; i++) {
		PORTB = (data & 0x01) ? DEC_DDATA : 0;
		if (i == 0)
			PORTB |= DEC_DSTROBE;
		PINB |= DEC_CLK;
		PINB |= DEC_CLK;
		if (i == 7)
			break;
		if ((PIND & DEC_DREADY) || (PIND & DEC_DERROR))
			return i | DEC_TRANSERRBIT;
		data >>= 1;
	}
	for (uint8_t i = 0; !(PIND & DEC_DREADY) && i < 32; i++) {
		PINB |= DEC_CLK;
		PINB |= DEC_CLK;
	}
	if (!(PIND & DEC_DREADY))
		return 0x0A | DEC_TRANSERRBIT;
	bool err = PIND & DEC_DERROR;
	for (uint8_t i = 0; i < 32; i++) {
		PINB |= DEC_CLK;
		PINB |= DEC_CLK;
	}
	if ((PIND & DEC_DREADY) || (PIND & DEC_DERROR))
		return 0x0F | DEC_TRANSERRBIT;
	if (!(PIND & DEC_DVALID))
		return err ? 0xFF : (0x0E | DEC_TRANSERRBIT);
	return (PIND & 0x0F) | (err ? DEC_ERRBIT : 0);
}

uint8_t decoder(uint8_t data)
{
	bool a, b, c, d;
	a = ((data >> 7) & 0x01) ^ ((data >> 5) & 0x01) ^ \
	    ((data >> 1) & 0x01) ^ ((data >> 0) & 0x01);
	b = ((data >> 7) & 0x01) ^ ((data >> 3) & 0x01) ^ \
	    ((data >> 2) & 0x01) ^ ((data >> 1) & 0x01);
	c = ((data >> 5) & 0x01) ^ ((data >> 4) & 0x01) ^ \
	    ((data >> 3) & 0x01) ^ ((data >> 1) & 0x01);
	d = ((data >> 7) & 0x01) ^ ((data >> 6) & 0x01) ^ \
	    ((data >> 5) & 0x01) ^ ((data >> 4) & 0x01) ^ \
	    ((data >> 3) & 0x01) ^ ((data >> 2) & 0x01) ^ \
	    ((data >> 1) & 0x01) ^ ((data >> 0) & 0x01);
	if (d && (!a || !b || !c))
		return 0xFF;
	data = (((data >> 7) & 0x01) << 3) | \
	       (((data >> 5) & 0x01) << 2) | \
	       (((data >> 3) & 0x01) << 1) | \
	       (((data >> 1) & 0x01) << 0);
	if (d)
		return data;
	else if (!a && !b && !c)
		return (data ^ 0x01) | DEC_ERRBIT;
	else if (a && !b && !c)
		return (data ^ 0x02) | DEC_ERRBIT;
	else if (!a && b && !c)
		return (data ^ 0x04) | DEC_ERRBIT;
	else if (!a && !b && c)
		return (data ^ 0x08) | DEC_ERRBIT;
	return data | DEC_ERRBIT;
}

void init(void)
{
	DDRB |= 0x80;			// LED
	PORTB |= 0x80;

	PORTD = 0x7F;
	DDRD = 0;
	DDRB = DEC_CLK | DEC_DSTROBE | DEC_DDATA;
	PORTB = 0;

	tft.init();
	tft.setOrient(tft.Portrait);
	tft.setBackground(0x0000);
	tft.setForeground(0x667F);
	tft.clean();
	stdout = tftout(&tft);
	tft.setBGLight(true);
}

int main(void)
{
	init();

start:
	tft.clean();
	tft.setZoom(2);
	puts("Hamming decoder");
	tft.setZoom(1);
	uint8_t data = 0, dec, hwDec;
	do {
		dec = decoder(data);
		hwDec = hwDecoder(data);
		if ((!DEC_VALID(hwDec) && !DEC_VALID(dec)) || \
				(dec == hwDec))
			tft.setForeground(conv::c32to16(0x0000FF00));
		else if (!DEC_VALID(hwDec))
			tft.setForeground(conv::c32to16(0x007F0000));
		else if (DEC_TRANSERR(hwDec))
			tft.setForeground(conv::c32to16(0x000000FF));
		else
			tft.setForeground(conv::c32to16(0x00FF0000));
		printf("%02X", data);
		tft.setForeground(0xFFFF);
		if (DEC_VALID(hwDec) && DEC_TRANSERR(hwDec))
			printf("%01X", hwDec & 0x0F);
		else
			putchar('/');
		if (!DEC_VALID(dec))
			tft.setForeground(conv::c32to16(0x00FF0000));
		else if (DEC_ERR(dec))
			tft.setForeground(conv::c32to16(0x000000FF));
		else
			tft.setForeground(conv::c32to16(0x0000FF00));
		printf("%01X", dec & 0x0F);
		data++;
		putchar(data % 8 ? ' ' : '\n');
	} while (data);

	while (1);
	goto start;

	return 1;
}
