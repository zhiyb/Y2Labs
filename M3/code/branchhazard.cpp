#include <iostream>
#include <sstream>
#include "field.h"
#include "useful.h"
#include "branchhazard.h"

//#define PREDICT_ALWAYS_TAKEN
//#define PREDICT_ALWAYS_NOT_TAKEN
#define PREDICT_RANDOM

using namespace std;

void BranchHazard::analyse(const trace_t *trace)
{
	if (!previous.empty()) {
		bool t = previous.at(field::TPC) == trace->at(field::PC);
		if (!t && previous.at(field::FPC) != trace->at(field::PC))
			cerr << "Branch address error!" << endl;
		total++;
		taken += t;
		correct += t == predict();
		previous.clear();
	}
	string mop = trace->at(field::MicroOp);
	if (mop != "JMP_IMM" && mop != "JMP_REG")
		return;
	previous = *trace;
}

void BranchHazard::report(void)
{
	cout << total << " branchs:" << endl;
	cout << taken << " branch taken" << endl;
	cout << total - taken << " branch not taken" << endl;
	cout << correct << " prediction correct" << endl;
	cout << total - correct << " prediction incorrect" << endl;
}

bool BranchHazard::predict(void)
{
#if defined(PREDICT_ALWAYS_TAKEN)
	return true;
#elif defined(PREDICT_ALWAYS_NOT_TAKEN)
	return false;
#elif defined(PREDICT_RANDOM)
	return rand() % 2;
#endif
}
