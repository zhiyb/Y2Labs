#include <avr/io.h>
#include <stdio.h>
#include <util/delay.h>
#include "tft.h"
#include "conv.h"

// PORTB
#define FUNC0	_BV(0)
#define FUNC1	_BV(1)
#define READY	_BV(4)
#define START	_BV(5)
#define OE	_BV(7)

// PORTD as data

#define COMBINATIONAL
#define MAX	0x00
//#define MAX	0x0F
//#define DEBUG

using namespace conv;

void init(void)
{
	DDRD = 0x00;
	PORTD = 0x00;
	DDRB = START | OE | FUNC0 | FUNC1;
	PORTB = 0x00;
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

void test(uint8_t a, uint8_t b)
{
	uint8_t ra = 0, rb = 0;
	uint16_t res = (uint16_t)a * (uint16_t)b;

	// Write A
	DDRD = 0x00;
	PORTB = 0x00;		// Write A
	PORTD = a;
	DDRD = 0xFF;
	_delay_us(1);

	// Write B
	PORTB = 0x01;		// Write B
	PORTD = b;
	_delay_us(1);
	PORTB = 0x02;		// Read L
	DDRD = 0x00;
	PORTD = 0xFF;

	// Start
#ifndef COMBINATIONAL
	PORTB |= START;
	while (!(PINB & READY));
	while (PINB & READY);
	PORTB &= ~START;
#else
	_delay_us(1);
#endif
	while (!(PINB & READY));

	// Read L
	PORTB = 0x02 | OE;	// Read L
	_delay_us(1);
	ra = PIND;

	// Read H
	PORTB = 0x03 | OE;	// Read H
	_delay_us(1);
	rb = PIND;
	PORTB = 0x00;

	// Check
	uint16_t recv = ((uint16_t)rb << 8) | (uint16_t)ra;
	if (res != recv) {
		tft.setForeground(c32to16(0xFF0000));
		printf("%04X/%04X ", res, recv);
		tft.setForeground(c32to16(0x00FF00));
	} else if (b == 0 /*&& (a % 1 == 0)*/)
			printf("%02X%02X ", (uint16_t)a, (uint16_t)b);
#ifdef DEBUG
	else {
			printf("%02X%02X/%04X", (uint16_t)a, (uint16_t)b, res);
			tft.setX(tft.getX() - 9 * FONT_WIDTH);
	}
#endif
}

int main(void)
{
	init();

	tft.clean();
	tft *= 2;
	puts("*** Multiplier ***");
	tft *= 1;
	tft.setForeground(c32to16(0x00FF00));

	uint8_t a = 0;
	do {
		uint8_t b = 0;
		do
			test(a, b);
		while (++b != (uint8_t)MAX);
	} while (++a != (uint8_t)MAX);

	tft.setForeground(c32to16(0x0000FF));
	tft *= 2;
	printf("Done");
	while (1);

	return 1;
}
