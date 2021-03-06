#include <avr/io.h>
#include <stdio.h>
#include <stdint.h>
#include <util/delay.h>
#include <tft.h>
#include <colours.h>

// PORT B
#define COM_CLK		_BV(0)
//#define COM_RESET	_BV(1)
#define COM_DATA	_BV(1)
#define	ENC_START	_BV(4)
#define DEC_READY	_BV(5)
#define DEC_VALID	_BV(6)
#define DEC_ERROR	_BV(7)

// PORT D
#define ENC_DBIT	(ENC_D0 | ENC_D1 | ENC_D2 | ENC_D3)
#define ENC_D0		_BV(0)
#define	ENC_D1		_BV(1)
#define ENC_D2		_BV(2)
#define ENC_D3		_BV(3)
#define DEC_DBIT	(DEC_D0 | DEC_D1 | DEC_D2 | DEC_D3)
#define DEC_DATA	((PIND & DEC_DBIT) >> 4)
#define DEC_D0		_BV(4)
#define DEC_D1		_BV(5)
#define DEC_D2		_BV(6)
#define DEC_D3		_BV(7)

#define DATA_WAITING	0xFF
#define DATA_INVALID	0x7F
#define DATA_ERROR	_BV(6)
#define AVERAGE		200
#define RATE		0.01

using namespace colours::b16;

tft_t tft;

class decoder_t
{
public:
	decoder_t(void) : errCount(0), cnt(0), correct(0), errRate(0) {}
	void check(const uint8_t data, const uint8_t dec);
	uint8_t recv(void);
	uint16_t errors(void) const {return errCount;}
	uint16_t count(void) const {return cnt;}
	double errorRate(void) const {return (double)errCount / cnt;}

private:
	uint16_t errCount, cnt;
	uint16_t correct;
	double errRate;
} decoder;

uint16_t noiseCount = 0, dataCount = 0;

void noise(float rate)
{
	if ((rand() & 0xFFFF) < (rate * 0xFFFF)) {
		PORTB |= COM_DATA;
		noiseCount++;
	} else
		PORTB &= ~COM_DATA;
}

bool enc_pool(uint8_t data)
{
	PORTB |= COM_CLK;
	PORTB &= ~COM_CLK;
	static uint8_t cnt = 0;
	if (data == DATA_WAITING)
		PORTB &= ~ENC_START;
	else {
		PORTD = (PORTD & ~ENC_DBIT) | (data & ENC_DBIT);
		PORTB |= ENC_START;
		cnt = 8 - 1;
	}
	if (cnt == 0)
		return true;
	cnt--;
	return false;
}

uint8_t decoder_t::recv(void)
{
	uint8_t status = PINB;
	if (!(status & DEC_READY))
		return DATA_WAITING;
	cnt++;
	if (!(status & DEC_VALID))
		return DATA_INVALID;
	uint8_t data = DEC_DATA;
	if (status & DEC_ERROR)
		data |= DATA_ERROR;
	return data;
}

void decoder_t::check(const uint8_t data, const uint8_t dec)
{
	bool error = dec == DATA_INVALID || (dec & ~DATA_ERROR) != data;
	errCount += error;
	errRate = (errRate * (AVERAGE - 1) + error) / AVERAGE;
}

void init(void)
{
	DDRB = COM_CLK | COM_DATA | ENC_START;
	PORTB = DEC_READY | DEC_VALID | DEC_ERROR;
	DDRD = ENC_DBIT;
	PORTD = DEC_DBIT;

	tft.init();
	tft.setOrient(tft.Portrait);
	tft.setBackground(Black);
	tft.setForeground(0x667F);
	tft.clean();
	stdout = tftout(&tft);

	DDRA &= ~_BV(7);
	DDRA |= _BV(6);
	PORTA |= _BV(7);
	PORTA &= ~_BV(6);

	tft.setBGLight(true);
}

int main(void)
{
	init();

	tft.clean();
	tft.setZoom(1);
	puts("Hamming encoder & decoder test");

	tft.setZoom(2);
	bool newData = true;
loop:
	//while (PINA & _BV(7));
	uint8_t data = 0;
	while (data < 0x10) {
		noise(RATE);
		newData = enc_pool(newData ? data : DATA_WAITING);
		data += newData;
		dataCount += newData;
		uint8_t dec = decoder.recv();
		if (dec == DATA_WAITING)
			continue;
		decoder.check((data - 1) & 0x0F, dec);
	}
	tft.setY(0);
	tft.setForeground(Red);
	puts("Bit error rate:");
	tft.setForeground(Green);
	printf("%6.2f%%\n", (double)noiseCount * 8 / dataCount);
	tft.setForeground(Red);
	puts("Data error rate:");
	tft.setForeground(Green);
	printf("%6.2f%%\n", decoder.errorRate() * 100.0);
	tft.setForeground(Red);
	puts("Data count:");
	tft.setForeground(Green);
	printf("%u\n", dataCount);
	tft.setForeground(Red);
	puts("Data error count:");
	tft.setForeground(Green);
	printf("%u\n", decoder.errors());
	goto loop;

	return 1;
}
