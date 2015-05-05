#ifndef COUNTCODE_H
#define COUNTCODE_H

#include <map>
#include "analyser.h"

class CountCode : public Analyser
{
public:
	void analyse(std::vector < std::string > *trace);
	void report(void);
private:
	std::map < std::string, int > frequency;
};

#endif
