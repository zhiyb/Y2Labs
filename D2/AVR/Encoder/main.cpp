#include <avr/io.h>
#include <stdio.h>
#include <util/delay.h>
#include "tft.h"
#include "conv.h"

#define ENC_CLK		_BV(7)
#define	ENC_ESTART	_BV(4)
#define ENC_ED0		_BV(0)
#define	ENC_ED1		_BV(1)
#define ENC_ED2		_BV(2)
#define ENC_ED3		_BV(3)
#define ENC_ESTROBE	_BV(5)
#define ENC_EDATA	_BV(6)

void init(void)
{
	DDRB |= 0x80;			// LED
	PORTB |= 0x80;
	tft.init();
	tft /= tft.Portrait;
	tft.setBackground(0x0000);
	tft.setForeground(0x667F);
	tft.clean();
	stdout = tftout();
	tft++;

	PORTD = ENC_ESTROBE | ENC_EDATA;
	DDRD = ~(ENC_ESTROBE | ENC_EDATA);
	DDRB = 0;
	PORTB = 0;
}

int main(void)
{
	init();

start:
	tft.clean();
	tft *= 2;
	puts("Hamming encoder");

	for (uint8_t  num = 0; num < 16; num++) {
		//PIND |= ENC_CLK;
		//PIND |= ENC_CLK;
		PORTD = ENC_ESTROBE | ENC_EDATA | ENC_ESTART | num;
		uint8_t data = 0;
		uint8_t i = 0;
		while (i < 8) {
			PIND |= ENC_CLK;
			PIND |= ENC_CLK;
			if (i == 0 && !(PIND & ENC_ESTROBE)) {
				tft.setForeground(0x007F);
				tft *= 1;
				putchar('.');
				tft *= 2;
				continue;
			}
			data >>= 1;
			data |= (PIND & ENC_EDATA) ? 0x80 : 0x00;
			i++;
		}
		PORTD = ENC_ESTROBE | ENC_EDATA;
		uint8_t exp = ((num & 0x08) << 4) | ((num & 0x04) << 3) | ((num & 0x02) << 2) | ((num & 0x01) << 1);
		exp |= ((num & 0x02) << 5) ^ ((num & 0x04) << 4) ^ ((num & 0x08) << 3);
		exp |= ((~num & 0x01) << 4) ^ ((num & 0x02) << 3) ^ ((num & 0x04) << 2);
		exp |= ((~num & 0x01) << 2) ^ ((num & 0x02) << 1) ^ ((num & 0x08) >> 1);
		exp |= (~num & 0x01) ^ ((num & 0x04) >> 2) ^ ((num & 0x08) >> 3);
		//tft.setForeground(conv::c32to16(data == exp ? 0x0022B14C : 0x00ED1C24));
		tft.setForeground(conv::c32to16(data == exp ? 0x0000FF00 : 0x00FF0000));
		printf("%u: 0x%02X\n", num, data);
		//_delay_ms(1000);
	}

	while (1);
	goto start;

	return 1;
}
