#include <avr/io.h>
#include <avr/interrupt.h>
#include "ecsmacros.h"

volatile unsigned char count = 1;

ISR(PCINT1_vect)
{
	Bit_SET(PORTB, 0);
	count = 1 - count;
	Bit_CLEAR(PORTB, 0);
}

int main(void)
{
	DDRC = 0x00;		// C is input, do you need a pullup
	DDRB = 0xFF;		// rB is output
	PORTB = 0x00;
	PORTC = 0xFF;
	PCMSK1 = 0x02;		// enable PORTC, bit 1 for bit change interrupt
	//~ MCUCR = MCUCR | 0x04;
	GICR = 0x10;		// Enable interupt 0
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
