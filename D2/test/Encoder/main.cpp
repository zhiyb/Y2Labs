#include <stdio.h>
#include <stdint.h>

#define DELAY	0

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

uint8_t encoder(uint8_t num)
{
	uint8_t exp = ((num & 0x08) << 4) | ((num & 0x04) << 3) | ((num & 0x02) << 2) | ((num & 0x01) << 1);
	exp |= ((num & 0x02) << 5) ^ ((num & 0x04) << 4) ^ ((num & 0x08) << 3);
	exp |= ((~num & 0x01) << 4) ^ ((num & 0x02) << 3) ^ ((num & 0x04) << 2);
	exp |= ((~num & 0x01) << 2) ^ ((num & 0x02) << 1) ^ ((num & 0x08) >> 1);
	exp |= (~num & 0x01) ^ ((num & 0x04) >> 2) ^ ((num & 0x08) >> 3);
	return exp;
}

int main(void)
{
	puts("# Hamming encoder");
	puts("CRS DDDD SO");
	puts("C00 0000 00");
	putchar('\n');

	for (int n = 0; n < 0x10; n++) {
		for (int i = 0; i < 8 + DELAY; i++) {
			printf("C1%u ", i == 0);
			printBinary(n, 4);
			int e = encoder(n);
			bool o = i < DELAY ? 0 : ((e >> (i - DELAY)) & 0x01);
			printf(" %u%u\n", i == DELAY ? 1 : 0, o);
		}
		putchar('\n');
	}

	return 0;
}
