#include <avr/io.h>
#include <util/delay.h>

typedef volatile uint8_t * reg;

#define RAM(a)	(*(reg)(0x8000 | (a)))
#define BUFFER	(*(reg)0x4000)
#define LATCH	(*(reg)0x2000)

#define SAMPLE_DELAY()		_delay_us(1220)
#define	PLAYBACK_DELAY()	_delay_us(4883)
#define BUTTON	_BV(0)
#define LED	_BV(1)

void init(void)
{
	MCUCR |= _BV(SRE);

	DDRD &= ~BUTTON;
	DDRD |= LED;
	PORTD |= BUTTON | LED;
	LATCH = 0xFF;
}

int main(void)
{
	volatile uint8_t *p;
	init();

loop:
	// Ready, waiting
	PORTD |= LED;
	while (!(PIND & BUTTON));

	// Read buffer, store to RAM
	for (p = &RAM(0); p != &RAM(0x2000); p++) {
		*p = BUFFER;
		SAMPLE_DELAY();
	}

	// Read RAM, output to LATCH
	PORTD &= ~LED;
	for (p = &RAM(0); p != &RAM(0x2000); p++) {
		LATCH = *p;
		PLAYBACK_DELAY();
	}
	goto loop;

	return 1;
}
