#include <avr/io.h>
#include <avr/interrupt.h>
#include "ecsmacros.h"

volatile unsigned char count = 1;

ISR(PCINT0_vect)
{
	Bit_SET(PORTB, 0);
	count = 1 - count;
	Bit_CLEAR(PORTB, 0);
}

int main(void)
{
	DDRA = 0x00;		// A is input, do you need a pullup
	DDRB = 0xFF;		// rB is output
	PORTB = 0x00;
	PCMSK0 = 0x01;		// enable PORTA, bit 0 for bit change interrupt
	//~ MCUCR = MCUCR | 0x04;
	GICR = 0x08;		// Enable interupt 0
	sei();
	for (;;) {
		Bit_SET(PORTB, 1);
		if (count)
			Bit_SET(PORTB, 2);
		else
			Bit_CLEAR(PORTB, 2);
		Bit_CLEAR(PORTB, 1);
	}
	return (0);
}
