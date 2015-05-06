#include <iostream>
#include <sstream>
#include "field.h"
#include "useful.h"
#include "pipelinehazard.h"

#define DEPTH	2

using namespace std;

void PipelineHazard::analyse(const trace_t *trace)
{
	string acc(trace->at(field::Src1) + "," + trace->at(field::Src2));
	if (acc != "-1,-1") {
		list<trace_t>::iterator it;
		for (it = previous.begin(); it != previous.end(); ++it)
			acc += "," + it->at(field::Dest);
		countthings(&access, acc);
	}
	// Push into previous buffer
	if (previous.size() == DEPTH)
		previous.pop_front();
	previous.push_back(*trace);
}

void PipelineHazard::report(void)
{
	map<string, int> ::iterator it;
	cout << access.size() << " different accesses" << endl;
	int hazards = 0;
	for (it = access.begin(); it != access.end(); ++it) {
		cout << it->first << " => " << it->second << endl;
		hazards += detect(it->first);
	}
	cout << hazards << " data hazards" << endl;
}

bool PipelineHazard::detect(const std::string acc)
{
	stringstream ls(acc);
	vector<string> all;
	string tmp, src1, src2;
	if (!std::getline(ls, src1, ',') || !std::getline(ls, src2, ',')) {
		clog << "Invalid data access record: " << acc << endl;
		return false;
	}
	while (std::getline(ls, tmp, ','))
		all.push_back(tmp);
	vector<string>::iterator it;
	for (it = all.begin(); it != all.end(); ++it)
		if ((src1 != "-1" && *it == src1) || \
			(src2 != "-1" && *it == src2))
			return true;
	return false;
}
