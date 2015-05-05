#ifndef ANALYSIS_H
#define ANALYSIS_H

#include <vector>
#include <string>

class Analyser
{
public:
	virtual ~Analyser(void) {}
	virtual void init(void) {}
	virtual void analyse(std::vector < std::string > *trace) {}
	virtual void report(void) {}
};

#endif
