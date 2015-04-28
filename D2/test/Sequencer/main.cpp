#include <stdio.h>
#include <stdint.h>

#define TEAMI	0b11100001
#define TEAMJ	0b11100101
#define TEAMK	0b11101001
#define TEAMM	0b11110001
#define TEAMN	0b11110101

const uint8_t test = TEAMJ;

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

bool match(bool in)
{
	static uint8_t match = 0;
	match <<= 1;
	match |= in ? 1 : 0;
	return match == test;
}

void check(uint8_t data, uint8_t bits)
{
	for (uint8_t i = 0; i < bits; i++) {
		bool in = data & 0x80;
		data <<= 1;
		printf("C1%u", in);
		printf(" %u\n", match(in));
	}
}

int main(void)
{
	printf("# Sequencer: ");
	printBinary(test, 8);
	puts("\n<PinDef>\n"
	"# CRD M\n"
	"# Clock, nReset, DataIn, MatchAll\n"
	"A12, A13, A14, Q12\n"
	"</PinDef>\n\n"
	"<TestVector>\n"
	"000 0\n"
	"C00 0\n");

	check(test, 8);
	putchar('\n');
	for (uint8_t i = 1; i <= 8; i++) {
		check(test, i);
		check(test, 8);
		putchar('\n');
	}
#ifdef TEST_ALL
	for (int i = 0; i < 256; i++) {
		check(i, 8);
		putchar('\n');
	}
#endif
	puts("000 0\n");	// Idle state
	puts("</TestVector>");

	return 0;
}
