#ifndef BRANCHHAZARD_H
#define BRANCHHAZARD_H

#include <map>
#include <list>
#include "analyser.h"

class BranchHazard : public Analyser
{
public:
	void analyse(const trace_t *trace);
	void report(void);
private:
	trace_t previous;
	int correct, incorrect;
};

#endif
