#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>
#include <adc.h>
#include <eemem.h>
#include <tft.h>
#include <colours.h>
#include <rgbconv.h>
#include <capture.h>
#include <rtouch.h>
#include "lift.h"

#define OFFSET	30

using namespace conv;
using namespace colours::b16;

tft_t tft;
rTouch touch(&tft);

void init(void)
{
	DDRB = MMINUS | MPLUS;
	PORTB = MMINUS | MPLUS;
	DDRD = TOP | BOTTOM | IND0 | IND1 | IND2;
	PORTD = 0xFF;

	adc_init();
	adc_enable();
	tft.init();
	tft.setOrient(tft.Portrait);
	tft.setBackground(0x0000);
	tft.setForeground(0x667F);
	stdout = tftout(&tft);
	touch.init();
	sei();

	tft.setBGLight(true);
	//capture::init(&tft);
	//capture::enable();
	touch.calibrate();
	tft.clean();
	eeprom_first_done();
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

	static const uint16_t colours[7] = {White, Magenta, Cyan, Yellow, Blue, Green, Red};
	for (uint8_t i = 0; i < 7; i++)
		tft.rectangle(tft.width() - 8, tft.height() * i / 7, 8, tft.height() / 7, colours[i]);
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
	uint8_t port = IND0 | IND1 | IND2;
	if (touch.pressed()) {
		rTouch::coord_t res = touch.position();
		uint8_t idx = 7 - 1 - res.y * 7 / tft.height() % 7;
		if (idx == 0 || idx == 3 || idx == 5 || idx == 6)
			port &= ~IND0;
		if (idx == 1 || idx == 3 || idx == 4 || idx == 6)
			port &= ~IND1;
		if (idx == 2 || idx == 4 || idx == 5 || idx == 6)
			port &= ~IND2;
	}
	PORTD |= port;
	PORTD &= ~(IND0 | IND1 | IND2) | port;
	l.setIndicator(0, !(port & IND0));
	l.setIndicator(1, !(port & IND1));
	l.setIndicator(2, !(port & IND2));
}

int main(void)
{
	init();
	Lift l;

	tft.clean();
	tft.setZoom(2);
	puts("*** Lift module ***");
	draw(l);

start:
	update(l);
	set(l);
	_delay_ms(80);
	goto start;

	return 1;
}
