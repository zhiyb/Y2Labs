#include <avr/io.h>
#include <stdio.h>
#include <util/delay.h>
#include <tft.h>
#include <conv.h>
#include "sequence.h"

#define delay()	_delay_ms(1)

char *pb[8], *pd[8];
bool eb[8], ed[8];
uint8_t yTitle, enabled;

using namespace conv;

void init(void)
{
	DDRD = 0xFF;
	PORTD = 0x00;
	DDRB = 0x00;
	PORTB = 0x00;
	tft.init();
	tft /= tft.FlipPortrait;
	tft.setBackground(0x0000);
	tft.setForeground(0x667F);
	tft.clean();
	stdout = tftout();
	tft++;
}

void output(void)
{
	if (tft.getY() + FONT_HEIGHT > tft.height()) {
		tft.setX(tft.getX() + FONT_WIDTH * (enabled + 4));
		tft.setY(yTitle);
	}
	if (tft.getY() == yTitle) {
		tft.setForeground(c32to16(0x7F7F7F));
		printf("No.");
		tft.setForeground(c32to16(0x0000FF));
		for (uint8_t i = 0; i < 8; i++)
			if (ed[i])
				putchar(pD[i][0]);
		tft.setForeground(c32to16(0xFFFF00));
		for (uint8_t i = 0; i < 8; i++)
			if (eb[i])
				putchar(pB[i][0]);
		tft.setForeground(c32to16(0xFFFFFF));
		putchar('|');
		tft.setX(tft.getX() - FONT_WIDTH * (enabled + 4));
		tft.setY(tft.getY() + FONT_HEIGHT);
	}
}

bool step(void)
{
	bool ret = false;
	static uint8_t cnt = 0;
	tft.setForeground(c32to16(0xFFFFFF));
	printf("%-3u", ++cnt);
	for (uint8_t i = 0; i < 8; i++)
		if (ed[i]) {
			tft.setForeground(c32to16(0x7F7F7F));
			if (*pd[i] == '\0' && i != 0)
				pd[i]--;
			if (*pd[i] == '0')
				PORTD &= ~_BV(i);
			else if (*pd[i] == '1')
				PORTD |= _BV(i);
			else if (*pd[i] == '/') {
				PORTD &= ~_BV(i);
				delay();
				PORTD |= _BV(i);
			} else {
				tft.setForeground(c32to16(0x3F3F3F));
				putchar((PORTD & _BV(i)) ? '1' : '0');
				continue;
			}
			putchar(*pd[i]++);
			if (*pd[i] != '\0')
				ret = true;
		}
	delay();
	for (uint8_t i = 0; i < 8; i++)
		if (eb[i]) {
			if (*pb[i] == '0') {
				if (PINB & _BV(i))
					tft.setForeground(c32to16(0xFF0000));
				else
					tft.setForeground(c32to16(0x00FF00));
			} else if (*pb[i] == '1') {
				if (!(PINB & _BV(i)))
					tft.setForeground(c32to16(0xFF0000));
				else
					tft.setForeground(c32to16(0x00FF00));
			} else if (*pb[i] == '?')
				tft.setForeground(c32to16(0x00FF00));
			else
				tft.setForeground(c32to16(0x0000FF));
			if (*pb[i] == '\0')
				putchar((PINB & _BV(i)) ? '1' : '0');
			else {
				putchar(*pb[i]++);
				ret = ret ? true : *pb[i] != '\0';
			}
		}
	tft.setForeground(c32to16(0xFFFFFF));
	putchar('|');
	tft.setX(tft.getX() - FONT_WIDTH * (enabled + 4));
	tft.setY(tft.getY() + FONT_HEIGHT);
	return ret;
}

int main(void)
{
	init();

	tft.clean();
	tft *= 2;
	puts("*** Logic test ***");
	tft *= 1;

	enabled = 0;
	for (uint8_t i = 0; i < 8; i++) {
		pb[i] = pB[i];
		pd[i] = pD[i];
		if (*pB[i] != '\0') {
			eb[i] = true;
			pb[i]++;
			enabled++;
		}
		if (*pD[i] != '\0') {
			ed[i] = true;
			pd[i]++;
			enabled++;
		}
	}

	yTitle = tft.getY();
	do
		output();
	while (step());

	//printf("Done");
	while (1);

	return 1;
}
