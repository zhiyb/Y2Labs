// some macros to help with bit banging. Use with care they are not
// extensively tested
// See http://www.nongnu.org/avr-libc/user-manual/inline_asm.html
// jnc 19 April 2008
//
#define Bit_SET(port, bit) asm volatile("sbi %[p], %[b]"::[b] "I" (bit), [p] "I" (_SFR_IO_ADDR(port)))
#define Bit_CLEAR(port, bit) asm volatile("cbi %[p], %[b]"::[b] "I" (bit), [p] "I" (_SFR_IO_ADDR(port)))
