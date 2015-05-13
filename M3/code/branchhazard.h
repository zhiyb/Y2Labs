#ifndef BRANCHHAZARD_H
#define BRANCHHAZARD_H

#include <map>
#include <list>
#include "analyser.h"

class BranchHazard : public Analyser
{
public:
	BranchHazard(void) : taken(0), correct(0), total(0) {}
	void analyse(const trace_t *trace);
	void report(void);
private:
	bool predict(int addr);
	std::map<int, bool> prediction;
	trace_t previous;
	int taken, correct, total;
};

#endif
