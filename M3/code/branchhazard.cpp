#include <iostream>
#include <sstream>
#include "field.h"
#include "useful.h"
#include "branchhazard.h"

#define DEPTH	2

using namespace std;

void BranchHazard::analyse(const trace_t *trace)
{
	if (!previous.empty()) {
		if (previous.at(field::FPC) == trace->at(field::PC))
			incorrect++;
		else if (previous.at(field::TPC) == trace->at(field::PC))
			correct++;
		else
			cerr << "Branch address error!" << endl;
		previous.clear();
	}
	string mop = trace->at(field::MicroOp);
	if (mop != "JMP_IMM" && mop != "JMP_REG")
		return;
	previous = *trace;
}

void BranchHazard::report(void)
{
	cout << correct << " branch taken" << endl;
	cout << incorrect << " branch not taken" << endl;
}
