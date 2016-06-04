#include <avr/io.h>
#include <util/delay.h>

typedef volatile uint8_t * reg;

int main(void)
{
	MCUCR |= _BV(SRE);
	DDRD |= 0x01;
	reg p = (reg)0xFF00;

	for (;;) {
		PORTD |= 0x01;
		*p = 0xFF;
		PORTD &= ~0x01;
		*p;
	}

	return 1;
}
