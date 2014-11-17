#include <avr/io.h>
#include <stdio.h>
#include <util/delay.h>
#include "tft.h"
#include "conv.h"

// PORTD
#define ADD_X0		_BV(0)	// P1.0
#define ADD_X1		_BV(1)	// P1.1
#define ADD_X2		_BV(2)	// P1.2
#define ADD_X3		_BV(3)	// P1.3
#define ADD_Y0		_BV(4)	// P4.3
#define ADD_Y1		_BV(5)	// P4.4
#define ADD_Y2		_BV(6)	// P4.5
#define ADD_Y3		_BV(7)	// P4.6

// PORTB
#define ADD_XY0		_BV(4)	// P2.3
#define ADD_XY1		_BV(5)	// P2.4
#define ADD_XY2		_BV(6)	// P2.5
#define ADD_XY3		_BV(7)	// P2.6
#define ADD_CIN		_BV(0)	// P1.4
#define ADD_COUT	_BV(1)	// P4.0

using namespace conv;

void check(uint8_t data)
{
	if ((((PINB & ADD_COUT) ? 0x10 : 0x00) | \
			((PINB & 0xF0) >> 4)) == data)
		tft.setForeground(c32to16(0x0000FF00));
	else
		tft.setForeground(c32to16(0x00FF0000));
}

void init(void)
{
	DDRB |= 0x80;			// LED
	PORTB |= 0x80;
	tft.init();
	tft /= tft.Portrait;
	tft.setBackground(0x0000);
	tft.setForeground(0x667F);
	tft.clean();
	stdout = tftout();
	tft++;

	PORTD = 0x00;
	DDRD = 0xFF;
	DDRB = 0x01;
	PORTB = 0xFE;
}

int main(void)
{
	init();

start:
	tft.clean();
	tft *= 2;
	puts("4bit adder");
	tft *= 1;

	for (uint8_t c = 0; c < 2; c++) {
		tft.setForeground(c32to16(0x00FFFFFF));
		printf("\nCIn: %01X ", c);
		tft.setForeground(c32to16(0x007F7F7F));
		for (uint8_t x = 0; x < 16; x++)
			printf("%2X", x);
		putchar('\n');
		if (c)
			PORTB |= ADD_CIN;
		else
			PORTB &= ~ADD_CIN;
		for (uint8_t x = 0; x < 16; x++) {
			tft.setForeground(c32to16(0x007F7F7F));
			printf("X: %01X > ", x);
			for (uint8_t y = 0; y < 16; y++) {
				PORTD = (y << 4) | x;
				check(x + y + c);
				//printf("%01X ", y);
				printf("%02X", (((PINB & ADD_COUT) ? 0x10 : 0x00) | ((PINB & 0xF0) >> 4)));
			}
			putchar('\n');
		}
	}

	while (1);
	goto start;

	return 1;
}
