#include <avr/io.h>
#include <util/delay.h>

typedef volatile uint8_t * reg;

int main(void)
{
	MCUCR |= _BV(SRE);
	DDRD |= 0x01;

	reg p;
loop:
	for (p = (reg)0x0500; p != (reg)0xFFFF; p++) {
		PORTD &= ~0x01;
		*p = 0xFF;
		PORTD |= 0x01;
		*p;
	}
	goto loop;

	return 1;
}
