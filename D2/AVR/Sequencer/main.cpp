#include <avr/io.h>
#include <stdio.h>
#include <util/delay.h>
#include "tft.h"
#include "rgbconv.h"

#define SEQ_CLK	_BV(7)	// P1.7
#define	SEQ_D	_BV(4)	// P1.4
#define SEQ_M	_BV(7)	// P4.1

#define RED	c32to16(0x00FF0000)
#define GREEN	c32to16(0x0000FF00)
#define BLUE	c32to16(0x000000FF)
#define DARKRED	c32to16(0x007F0000)

#define TEAMI	0b11100001
#define TEAMJ	0b11100101
#define TEAMK	0b11101001
#define TEAMM	0b11110001
#define TEAMN	0b11110101

tft_t tft;
const uint8_t test = TEAMJ;

using namespace conv;

void check(const bool match)
{
	if (PINB & SEQ_M)
		tft.setForeground(match ? GREEN : RED);
	else
		tft.setForeground(match ? DARKRED : BLUE);
}

void init(void)
{
	DDRB |= 0x80;			// LED
	PORTB |= 0x80;
	
	PORTD = 0;
	DDRD = SEQ_CLK | SEQ_D;
	DDRB = 0;
	PORTB = SEQ_M;

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
	puts("Sequencer test");

	uint8_t buff = test, match = test;
	for (uint8_t i = 0; i < 8; i++) {
		PORTD = (buff & 0x80) ? SEQ_D : 0;
		PIND |= SEQ_CLK;
		PIND |= SEQ_CLK;
		check(i == 7);
		putchar((buff & 0x80) ? '1' : '0');
		buff <<= 1;
	}
	putchar('\n');
	for (uint8_t i = 1; i <= 8; i++) {
		buff = test;
		for (uint8_t j = 0; j < i; j++) {
			PORTD = (buff & 0x80) ? SEQ_D : 0;
			PIND |= SEQ_CLK;
			PIND |= SEQ_CLK;
			match <<= 1;
			match |= (buff & 0x80) ? 1 : 0;
			check(match == test);
			putchar((buff & 0x80) ? '1' : '0');
			buff <<= 1;
		}
		buff = test;
		for (uint8_t j = 0; j < 8; j++) {
			PORTD = (buff & 0x80) ? SEQ_D : 0;
			PIND |= SEQ_CLK;
			PIND |= SEQ_CLK;
			match <<= 1;
			match |= (buff & 0x80) ? 1 : 0;
			check(match == test);
			putchar((buff & 0x80) ? '1' : '0');
			buff <<= 1;
		}
		putchar('\n');
	}

	while (1);
	goto start;

	return 1;
}
