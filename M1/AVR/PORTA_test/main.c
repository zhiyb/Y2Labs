#include <avr/io.h>

int main(void)
{
	//MCUCR |= _BV(SRE);
	DDRA = 0xFF;

	uint8_t i = 0;
	for (;;)
		PORTA = i++;

	return 1;
}
