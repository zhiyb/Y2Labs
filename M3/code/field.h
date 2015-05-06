#ifndef FIELD_H
#define FIELD_H

#define FIELD_COUNT	14

namespace field {
enum {Uop = 0, PC, Src1, Src2, Dest, Flags, Branch, LdSt, \
	Immediate, MemAddr, FPC, TPC, MacroOp, MicroOp};
}

#endif
