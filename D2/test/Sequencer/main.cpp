#include <stdio.h>
#include <stdint.h>

#define TEAMI	0b11100001
#define TEAMJ	0b11100101
#define TEAMK	0b11101001
#define TEAMM	0b11110001
#define TEAMN	0b11110101

const uint8_t test = TEAMJ;

int main(void)
{
	puts("# Sequencer\n"
	"<PinDef>\n"
	"# CRD M\n"
	"# Clock, nReset, DataIn, MatchAll\n"
	"A12, A13, A14, Q12\n"
	"</PinDef>\n\n"
	"<TestVector>\n"
	"C00 0\n");

	uint8_t buff = test, match = test;
	for (uint8_t i = 0; i < 8; i++) {
		printf("C1");
		putchar((buff & 0x80) ? '1' : '0');
		printf(" %u\n", i == 7 ? 1 : 0);
		buff <<= 1;
	}
	putchar('\n');
	for (uint8_t i = 1; i <= 8; i++) {
		buff = test;
		for (uint8_t j = 0; j < i; j++) {
			match <<= 1;
			match |= (buff & 0x80) ? 1 : 0;
			printf("C1");
			putchar((buff & 0x80) ? '1' : '0');
			printf(" %u\n", match == test ? 1 : 0);
			buff <<= 1;
		}
		buff = test;
		for (uint8_t j = 0; j < 8; j++) {
			match <<= 1;
			match |= (buff & 0x80) ? 1 : 0;
			printf("C1");
			putchar((buff & 0x80) ? '1' : '0');
			printf(" %u\n", match == test ? 1 : 0);
			buff <<= 1;
		}
		putchar('\n');
	}
#ifdef TEST_ALL
	for (int i = 0; i < 256; i++) {
		buff = i;
		for (uint8_t j = 0; j < 8; j++) {
			match <<= 1;
			match |= (buff & 0x80) ? 1 : 0;
			printf("C1");
			putchar((buff & 0x80) ? '1' : '0');
			printf(" %u\n", match == test ? 1 : 0);
			buff <<= 1;
		}
		putchar('\n');
	}
#endif
	puts("</TestVector>");

	return 0;
}
