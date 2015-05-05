#ifndef ANALYSIS_H
#define ANALYSIS_H

#include <vector>
#include <string>

typedef std::vector < std::string > trace_t;

class Analyser
{
public:
	virtual ~Analyser(void) {}
	virtual void init(void) {}
	virtual void analyse(trace_t *trace) {}
	virtual void report(void) {}
};

#endif
