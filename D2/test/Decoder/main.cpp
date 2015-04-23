#include <stdio.h>
#include <stdint.h>

#define DELAY	0

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
	puts("# Hamming decoder\n"
	"<PinDef>\n"
	"# CRSI DDDD RVE\n"
	"# Clock, nReset, Strobe, DataIn, D3, D2, D1, D0, Ready, Valid, Error\n"
	"A15, A16, A22, A23, Q21, Q20, Q19, Q18, Q17, Q22, Q23\n"
	"</PinDef>\n\n"
	"<TestVector>\n"
	"C000 0000 000\n");

	int prev = -1, prevprev = -1;
	for (int data = 0; data < 0x100 + 1; data++) {
		uint8_t dec = decoder(data);
		for (int i = 0; i < 8 + DELAY; i++) {
			if (i == DELAY)
				prev = prevprev;
			bool in = i < 8 ? (data >> i) % 2 : 0;
			printf("C1%u%u ", i == 0, in);
			if (DEC_VALID(prev))
				printBinary(prev == -1 ? 0 : prev, 4);
			else
				printf("XXXX");
			bool ready = 0, valid = 0, error = 0;
			if (prev != -1) {
				ready = i == DELAY;
				valid = DEC_VALID(prev);
				error = ready ? DEC_ERROR(prev) : 0;
			}
			printf(" %u%u%u", ready, valid, error);
			putchar('\n');
		}
		prevprev = dec;
		putchar('\n');
	}
	puts("</TestVector>");

	return 0;
}
