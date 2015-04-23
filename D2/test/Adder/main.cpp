#include <stdio.h>
#include <stdint.h>

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

int main(void)
{
	puts("# 4bit adder");
	puts("I AAAA BBBB O QQQQ");

	for (uint8_t c = 0; c < 2; c++)
		for (uint8_t a = 0; a < 16; a++)
			for (uint8_t b = 0; b < 16; b++) {
				printBinary(c, 1);
				putchar(' ');
				printBinary(a, 4);
				putchar(' ');
				printBinary(b, 4);
				putchar(' ');

				printBinary((a + b + c) / 0x10, 1);
				putchar(' ');
				printBinary(a + b + c, 4);
				putchar('\n');
			}
	
	return 0;
}
