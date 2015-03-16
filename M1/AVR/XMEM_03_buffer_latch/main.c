#include <avr/io.h>
#include <util/delay.h>

typedef volatile uint8_t * reg;

int main(void)
{
	MCUCR |= _BV(SRE);
	DDRD |= 0x01;
	reg p = (reg)0xFF00;

	for (;;) {
		uint8_t tmp;
		PORTD &= ~0x01;
		tmp = *p;
		PORTD |= 0x01;
		*p = tmp;
	}

	return 1;
}
