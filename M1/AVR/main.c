#include <avr/io.h>

#define RAM(a)	((volatile uint8_t *)(0x8000 | (a)))
#define BUFFER	((volatile uint8_t *)0x4000)
#define LATCH	((volatile uint8_t *)0x2000)

int main(void)
{
	MCUCR |= _BV(SRE);

	*RAM(8) = 0x55;
	*RAM(9) = 0xAA;

	uint8_t i;
	for (i = 0; i < 128; i++)
		*RAM(i + 0x10) = i;

loop:
	*RAM(0) = *BUFFER;
	uint8_t d = *RAM(0);
	*LATCH = d;
	goto loop;

	return 1;
}
