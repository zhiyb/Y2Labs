#include <avr/io.h>
#include <util/delay.h>

#define RAM(a)	(*(volatile uint8_t *)(0x8000 | (a)))
#define BUFFER	(*(volatile uint8_t *)0x4000)
#define LATCH	(*(volatile uint8_t *)0x2000)

#define SAMPLE_DELAY()		_delay_us(1220)
#define	PLAYBACK_DELAY()	_delay_us(4883)
#define BUTTON	(1 << 0)

void init(void)
{
	MCUCR |= _BV(SRE);

	DDRD &= ~BUTTON;
	PORTD |= BUTTON;
}

int main(void)
{
	volatile uint8_t *p;
	init();

loop:
	while (PIND & BUTTON);

	p = &RAM(0);
	do {
		*p = BUFFER;
		SAMPLE_DELAY();
	} while (p++ != &RAM(0x1FFF));

	p = &RAM(0);
	do {
		LATCH = *p;
		PLAYBACK_DELAY();
	} while (p++ != &RAM(0x1FFF));
	goto loop;

	return 1;
}
