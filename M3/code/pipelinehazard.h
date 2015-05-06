#ifndef PIPELINEHAZARD_H
#define PIPELINEHAZARD_H

#include <map>
#include <list>
#include "analyser.h"

class PipelineHazard : public Analyser
{
public:
	void analyse(const trace_t *trace);
	void report(void);
private:
	bool detect(const std::string acc);
	std::list < trace_t > previous;
	std::map < std::string, int > access;
};

#endif
