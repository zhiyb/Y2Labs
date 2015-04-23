#include <stdio.h>
#include <stdint.h>

#define DELAY	1

#define DEC_ERRBIT	(1 << 7)
#define DEC_ERROR(d)	(d & DEC_ERRBIT)
#define DEC_VALID(d)	(d != 0xFF)
#define DEC_TRANSERRBIT	(1 << 6)
#define DEC_TRANSERR(d)	(d & DEC_TRANSERRBIT)

void printBinary(uint32_t v, int len)
{
	char str[32];
	str[len] = '\0';
	while (len--) {
		str[len] = v % 2 ? '1' : '0';
		v >>= 1;
	}
	printf(str);
}

uint8_t decoder(uint8_t data)
{
	bool a, b, c, d;
	a = ((data >> 7) & 0x01) ^ ((data >> 5) & 0x01) ^ \
	    ((data >> 1) & 0x01) ^ ((data >> 0) & 0x01);
	b = ((data >> 7) & 0x01) ^ ((data >> 3) & 0x01) ^ \
	    ((data >> 2) & 0x01) ^ ((data >> 1) & 0x01);
	c = ((data >> 5) & 0x01) ^ ((data >> 4) & 0x01) ^ \
	    ((data >> 3) & 0x01) ^ ((data >> 1) & 0x01);
	d = ((data >> 7) & 0x01) ^ ((data >> 6) & 0x01) ^ \
	    ((data >> 5) & 0x01) ^ ((data >> 4) & 0x01) ^ \
	    ((data >> 3) & 0x01) ^ ((data >> 2) & 0x01) ^ \
	    ((data >> 1) & 0x01) ^ ((data >> 0) & 0x01);
	if (d && (!a || !b || !c))
		return 0xFF;
	data = (((data >> 7) & 0x01) << 3) | \
	       (((data >> 5) & 0x01) << 2) | \
	       (((data >> 3) & 0x01) << 1) | \
	       (((data >> 1) & 0x01) << 0);
	if (d)
		return data;
	else if (!a && !b && !c)
		return (data ^ 0x01) | DEC_ERRBIT;
	else if (a && !b && !c)
		return (data ^ 0x02) | DEC_ERRBIT;
	else if (!a && b && !c)
		return (data ^ 0x04) | DEC_ERRBIT;
	else if (!a && !b && c)
		return (data ^ 0x08) | DEC_ERRBIT;
	return data | DEC_ERRBIT;
}

int main(void)
{
	puts("# Hamming decoder");
	puts("CRSI DDDD RVE");
	puts("C000 0000 000");
	putchar('\n');

	int prev = -1, prevprev = -1;
	for (int data = 0; data < 0x100 + 1; data++) {
		uint8_t dec = decoder(data);
		for (int i = 0; i < 8 + DELAY; i++) {
			if (i == DELAY)
				prev = prevprev;
			bool in = i < 8 ? (data >> i) % 2 : 0;
			printf("C1%u%u ", i == 0, in);
			printBinary(prev == -1 ? 0 : prev, 4);
			bool ready = 0, valid = 0, error = 0;
			if (prev != -1) {
				ready = i == DELAY;
				valid = DEC_VALID(prev);
				error = DEC_ERROR(prev);
			}
			printf(" %u%u%u", ready, valid, error);
			putchar('\n');
		}
		prevprev = dec;
		putchar('\n');
	}

#if 0
	uint8_t data = 0, dec, hwDec;
	do {
		dec = decoder(data);
		hwDec = hwDecoder(data);
		if ((!DEC_VALID(hwDec) && !DEC_VALID(dec)) || \
				(dec == hwDec))
			tft.setForeground(conv::c32to16(0x0000FF00));
		else if (!DEC_VALID(hwDec))
			tft.setForeground(conv::c32to16(0x007F0000));
		else if (DEC_TRANSERR(hwDec))
			tft.setForeground(conv::c32to16(0x000000FF));
		else
			tft.setForeground(conv::c32to16(0x00FF0000));
		printf("%02X", data);
		tft.setForeground(0xFFFF);
		if (DEC_VALID(hwDec) && DEC_TRANSERR(hwDec))
			printf("%01X", hwDec & 0x0F);
		else
			putchar('/');
		if (!DEC_VALID(dec))
			tft.setForeground(conv::c32to16(0x00FF0000));
		else if (DEC_ERR(dec))
			tft.setForeground(conv::c32to16(0x000000FF));
		else
			tft.setForeground(conv::c32to16(0x0000FF00));
		printf("%01X", dec & 0x0F);
		data++;
		putchar(data % 8 ? ' ' : '\n');
	} while (data);
#endif
	return 0;
}
