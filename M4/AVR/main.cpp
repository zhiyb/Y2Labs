#include <avr/io.h>
#include <stdio.h>
#include <util/delay.h>
#include <tft.h>
#include <conv.h>
#include "lift.h"

// PORTB
#define MMINUS	_BV(4)
#define MPLUS	_BV(5)

// PORTD
#define EN	_BV(0)
#define DIREC	_BV(1)
#define TOP	_BV(3)
#define IND0	_BV(4)
#define IND1	_BV(5)
#define IND2	_BV(6)
#define BOTTOM	_BV(7)

#define OFFSET	30

using namespace conv;

void init(void)
{
	DDRB = MMINUS | MPLUS;
	PORTB = MMINUS | MPLUS;
	DDRD = TOP | BOTTOM;
	PORTD = 0xFF;
	//DDRB |= 0x80;			// LED
	//PORTB |= 0x80;
	tft.init();
	tft /= tft.Portrait;
	tft.setBackground(0x0000);
	tft.setForeground(0x667F);
	tft.clean();
	stdout = tftout();
	tft++;
}

void draw(Lift& l)
{
	uint16_t y = OFFSET;
	tft.setX(0);
	tft.setY(y);
	tft.setForeground(c32to16(0x7F7F7F));
	puts("TOP");
	tft.rectangle(80, y, 40, 2 * l.lift_ht, c32to16(0xFFFFFF));
	y += (l.top_ht - l.mid_p_ht) * 2;
	tft.setX(0);
	tft.setY(y);
	tft.setForeground(c32to16(0x7F7F7F));
	puts("MIDDLE");
	tft.rectangle(80, y, 40, 2 * l.lift_ht, c32to16(0xFFFFFF));
	y += (l.mid_p_ht - l.bottom_ht) * 2 - l.lift_ht * 2;
	tft.setX(0);
	tft.setY(y);
	tft.setForeground(c32to16(0x7F7F7F));
	puts("BOTTOM");
	tft.rectangle(80, y, 40, 2 * l.lift_ht, c32to16(0xFFFFFF));
}

void update(Lift& l)
{
	uint16_t y = OFFSET + (l.top_ht - l.lift_ht - l.height()) * 2;
	uint16_t ly = y;
	tft.rectangle(130, OFFSET, 20, y - OFFSET, c32to16(0x3F3F3F));
	tft.rectangle(130, y + l.lift_ht * 2, 20, OFFSET + l.top_ht * 2 - y - l.lift_ht * 2, c32to16(0x3F3F3F));

	y = OFFSET;
	tft.rectangle(160, y, 20, l.lift_ht * 2, c32to16(l.indicator(2) ? 0xFFFF00 : 0x0000FF));
	tft.rectangle(190, y, 20, l.lift_ht * 2, c32to16(l.top() ? 0x00FF00 : 0xFF0000));
	y += (l.top_ht - l.mid_p_ht) * 2;
	tft.rectangle(160, y, 20, l.lift_ht * 2, c32to16(l.indicator(1) ? 0xFFFF00 : 0x0000FF));
	tft.rectangle(190, y, 20, l.lift_ht, c32to16(l.middlePlus() ? 0x00FF00 : 0xFF0000));
	tft.rectangle(190, y + l.lift_ht, 20, l.lift_ht, c32to16(l.middleMinus() ? 0x00FF00 : 0xFF0000));
	y += (l.mid_p_ht - l.bottom_ht) * 2 - l.lift_ht * 2;
	tft.rectangle(160, y, 20, l.lift_ht * 2, c32to16(l.indicator(0) ? 0xFFFF00 : 0x0000FF));
	tft.rectangle(190, y, 20, l.lift_ht * 2, c32to16(l.bottom() ? 0x00FF00 : 0xFF0000));
	
	bool m = l.move();
	tft.rectangle(130, ly, 20, l.lift_ht * 2, c32to16(m ? 0x00FF00 : 0xFF0000));
}

#if 1
void set(Lift &l)
{
	if (!l.top())
		PORTD |= TOP;
	else
		PORTD &= ~TOP;
	if (!l.middlePlus())
		PORTB |= MPLUS;
	else
		PORTB &= ~MPLUS;
	if (!l.middleMinus())
		PORTB |= MMINUS;
	else
		PORTB &= ~MMINUS;
	if (!l.bottom())
		PORTD |= BOTTOM;
	else
		PORTD &= ~BOTTOM;
	_delay_ms(1);
	l.setEnable(!(PIND & EN));
	l.setDirection(PIND & DIREC);
	l.setIndicator(0, !(PIND & IND0));
	l.setIndicator(1, !(PIND & IND1));
	l.setIndicator(2, !(PIND & IND2));
}
#else
void set(Lift& l)
{
	static uint8_t dir = Lift::Up, e = false, idc = 0;
	if (l.height() == l.top_ht - l.lift_ht) {
		if (e) {
			dir = Lift::Down;
			e = false;
		} else
			e = true;
	}
	if (l.height() == l.bottom_ht) {
		if (e) {
			dir = Lift::Up;
			e = false;
		} else
			e = true;
	}
	l.setEnable(true);
	l.setDirection(dir);
	for (uint8_t i = 0; i < 3; i++)
		l.setIndicator(i, i == idc);
	if (e && ++idc == 3)
		idc = 0;
}
#endif

int main(void)
{
	init();
	Lift l;

	tft.clean();
	tft *= 2;
	puts("*** Lift module ***");
	draw(l);

start:
	set(l);
	update(l);
	_delay_ms(30);
	goto start;

	return 1;
}
