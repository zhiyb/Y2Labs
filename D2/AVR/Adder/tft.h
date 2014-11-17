#ifndef TFT_H
#define TFT_H

#define FONT_WIDTH 6
#define FONT_HEIGHT 8
//#define TFT_SCROLL

#include <avr/io.h>
#include <avr/pgmspace.h>
#include <stdio.h>
#include <stdlib.h>
#include "ili9341.h"
#include "ascii.h"

class tfthw: public ili9341
{
public:
	inline tfthw(void);

	inline class tfthw& operator<<(const char c);
	inline class tfthw& operator<<(const char *str);
	inline class tfthw& operator<<(const int16_t i);
	inline class tfthw& operator<<(const uint16_t i);
	inline class tfthw& operator<<(const int32_t i);
	inline class tfthw& operator<<(const uint32_t i);
	inline class tfthw& operator++(int x);
	inline class tfthw& operator--(int x);
	inline class tfthw& operator*=(uint8_t z);
	inline class tfthw& operator/=(uint8_t o);
	inline class tfthw& operator^=(uint16_t l);

	inline void setX(uint16_t n) {x = n;}
	inline void setY(uint16_t n) {y = n;}
	inline void setXY(uint16_t m, uint16_t n) {x = m; y = n;}
	inline uint16_t getX(void) {return x;}
	inline uint16_t getY(void) {return y;}
	inline void setForeground(uint16_t c) {fgc = c;}
	inline void setBackground(uint16_t c) {bgc = c;}
	inline uint16_t getForeground(void) {return fgc;}
	inline uint16_t getBackground(void) {return bgc;}
	inline void setOrient(uint8_t o);
	inline uint8_t getOrient(void) {return orient;}
	inline void setBGLight(bool e) {_setBGLight(e);}
	inline void setTabSize(uint8_t t) {tabSize = t;}
	inline uint8_t getTabSize(void) {return tabSize;}
	inline void clean(void) {fill(bgc); x = 0; y = 0;}
	void line(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, \
		uint16_t c);
	void frame(uint16_t x, uint16_t y, uint16_t w, uint16_t h, \
		uint8_t s, uint16_t c);
	inline void fill(uint16_t clr);
	void putch(char ch);
	void rectangle(uint16_t x, uint16_t y, uint16_t w, uint16_t h, \
		uint16_t c);
	inline void point(uint16_t x, uint16_t y, uint16_t c);

	inline void area(uint16_t x, uint16_t y, uint16_t w, uint16_t h);
	inline void all(void);
	inline void bmp(bool e);
	inline uint16_t width(void) const {return w;}
	inline uint16_t height(void) const {return h;}
	static inline void start(void) {cmd(0x2C);}
	static inline void write(uint16_t c) {data(c / 0x0100); data(c % 0x0100);}

protected:
	inline void newline(void);
	inline void next(void);
	inline void tab(void);

	uint8_t zoom, orient, tabSize;
	uint16_t x, y, w, h, fgc, bgc;
};

FILE *tftout(void);

extern class tfthw tft;

// Defined as inline to execute faster

#define WIDTH FONT_WIDTH
#define HEIGHT FONT_HEIGHT
#define SIZE_H 320
#define SIZE_W 240
#define DEF_FGC 0xFFFF
#define DEF_BGC 0x0000
#define SWAP(x, y) { \
	(x) = (x) ^ (y); \
	(y) = (x) ^ (y); \
	(x) = (x) ^ (y); \
}

inline tfthw::tfthw(void)
{
	x = 0;
	y = 0;
	zoom = 1;
	orient = Portrait;
	tabSize = 4;
	w = SIZE_W;
	h = SIZE_H;
	fgc = DEF_FGC;
	bgc = DEF_BGC;
}

inline void tfthw::bmp(bool e)
{
	if (!e) {
		_setOrient(orient);
		return;
	}
	switch (orient) {
	case Landscape:
		_setOrient(BMPLandscape);
		break;
	case Portrait:
		_setOrient(BMPPortrait);
		break;
	case FlipLandscape:
		_setOrient(BMPFlipLandscape);
		break;
	case FlipPortrait:
		_setOrient(BMPFlipPortrait);
	}
}

inline class tfthw& tfthw::operator^=(uint16_t l)
{
	// 0x2C Write, 0x2E Read, 0x3C / 0x3E Continue, 0x00 NOP
	uint8_t buff[w * 2];
	uint16_t r;
	cmd(0x2A);			// Column Address Set
	data(0x00);
	data(0x00);
	data((w - 1) / 0x0100);
	data((w - 1) % 0x0100);
	for (r = 0; r < h - l; r++) {
		uint16_t b = w * 2;
		//area(0, r + l, w, 1);
		cmd(0x2B);		// Page Address Set
		data((r + l) / 0x0100);
		data((r + l) % 0x0100);
		data((r + l) / 0x0100);
		data((r + l) % 0x0100);
		cmd(0x2E);		// Read
		mode(true);		// Read mode
		recv();
		while (b--) {
			buff[b] = recv() & 0xF8;
			uint8_t g = recv();
			buff[b--] |= g >> 5;
			buff[b] = (g << 3) & 0xE0;
			buff[b] |= recv() >> 3;
		}
		mode(false);		// Write mode

		b = w * 2;
		//area(0, r, w, 1);
		cmd(0x2B);		// Page Address Set
		data(r / 0x0100);
		data(r % 0x0100);
		data(r / 0x0100);
		data(r % 0x0100);
		cmd(0x2C);		// Write
		while (b--)
			data(buff[b]);
	}
	//area(0, h - l, w, l);
	cmd(0x2B);		// Page Address Set
	data((h - l) / 0x0100);
	data((h - l) % 0x0100);
	data((h - 1) / 0x0100);
	data((h - 1) % 0x0100);
	cmd(0x2C);
	while (r++ < h) {
		for (uint16_t c = w; c; c--) {
			data(bgc / 0x0100);
			data(bgc % 0x0100);
		}
	}
	return *this;
}

inline class tfthw& tfthw::operator/=(uint8_t o)
{
	setOrient(o);
	return *this;
}

inline class tfthw& tfthw::operator*=(uint8_t z)
{
	zoom = z;
	return *this;
}

inline class tfthw& tfthw::operator++(int x)
{
	_setBGLight(true);
	return *this;
}

inline class tfthw& tfthw::operator--(int x)
{
	_setBGLight(false);
	return *this;
}

inline class tfthw& tfthw::operator<<(const int16_t i)
{
	uint16_t p = 10000, n = abs(i);
	if (i < 0)
		*this << '-';
	while ((p != 1) && (n / p == 0))
		p /= 10;
	while (p != 0) {
		*this << (char)((n / p) % 10 + '0');
		p /= 10;
	}
	return *this;
}

inline class tfthw& tfthw::operator<<(const uint16_t i)
{
	uint16_t p = 10000;
	while ((p != 1) && (i / p == 0))
		p /= 10;
	while (p != 0) {
		*this << (char)((i / p) % 10 + '0');
		p /= 10;
	}
	return *this;
}

inline class tfthw& tfthw::operator<<(const char c)
{
	switch (c) {
	case '\n':
		newline();
		break;
	case '\t':
		tab();
		break;
	default:
		if ((unsigned)c < ' ' || (unsigned)c > 127)
			break;
		putch(c);
		next();
	}
	return *this;
}

inline class tfthw& tfthw::operator<<(const char *str)
{
	while (*str) {
		*this << *str;
		str++;
	}
	return *this;
}

inline void tfthw::point(uint16_t x, uint16_t y, uint16_t c)
{
	area(x, y, 1, 1);
	cmd(0x2C);			// Memory Write
	data(c / 0x0100);
	data(c % 0x0100);
}

inline void tfthw::newline(void)
{
	x = 0;
	y += HEIGHT * zoom;
	if (y + HEIGHT * zoom > h) {
#ifdef TFT_SCROLL
		*this ^= HEIGHT * zoom;
		y -= HEIGHT * zoom;
#else
		fill(bgc);
		y = 0;
#endif
	}
}

inline void tfthw::fill(uint16_t clr)
{
	uint8_t ch = clr / 0x0100, cl = clr % 0x0100;
	uint16_t x = w, y;
	all();
	cmd(0x2C);			// Memory Write
	while (x--) {
		y = h;
		while (y--) {
			data(ch);
			data(cl);
		}
	}
}

inline void tfthw::area(uint16_t x, uint16_t y, uint16_t w, uint16_t h)
{
	cmd(0x2A);			// Column Address Set
	data(x / 0x0100);
	data(x % 0x0100);
	data((x + w - 1) / 0x0100);
	data((x + w - 1) % 0x0100);
	cmd(0x2B);			// Page Address Set
	data(y / 0x0100);
	data(y % 0x0100);
	data((y + h - 1) / 0x0100);
	data((y + h - 1) % 0x0100);
}

inline void tfthw::all(void)
{
	cmd(0x2A);			// Column Address Set
	data(0x00);			// x
	data(0x00);
	data((w - 1) / 0x0100);	// w
	data((w - 1) % 0x0100);
	cmd(0x2B);			// Page Address Set
	data(0x00);			// y
	data(0x00);
	data((h - 1) / 0x0100);	// h
	data((h - 1) % 0x0100);
}

inline void tfthw::next(void)
{
	x += WIDTH * zoom;
	if (x + WIDTH * zoom > w)
		newline();
}

inline void tfthw::tab(void)
{
	if (x % (WIDTH * zoom))
		x -= x % (WIDTH * zoom);
	do
		next();
	while ((x / (WIDTH * zoom)) % tabSize);
}

inline void tfthw::setOrient(uint8_t o)
{
	_setOrient(o);
	switch (o) {
	case Landscape:
	case FlipLandscape:
		w = SIZE_H;
		h = SIZE_W;
		break;
	case Portrait:
	case FlipPortrait:
		w = SIZE_W;
		h = SIZE_H;
	}
	orient = o;
	x = 0;
	y = 0;
}

#undef WIDTH
#undef HEIGHT
#undef SIZE_H
#undef SIZE_W
#undef DEF_FGC
#undef DEF_BGC
#undef SWAP

#endif
