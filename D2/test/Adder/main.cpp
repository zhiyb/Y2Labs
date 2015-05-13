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
	puts("# 4 bit adder\n"
	"<PinDef>\n"
	"# I AAAA BBBB O QQQQ\n"
	"# CarryIn, A[3:0], B[3:0], CarryOut, Q[3:0]\n"
	"A3, A7, A6, A5, A4, A11, A10, A9, A8, Q7, Q6, Q5, Q4, Q3\n"
	"</PinDef>\n\n"
	"<TestVector>");

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
	puts("</TestVector>");
	
	return 0;
}
