/*
 * Main Program to load, and parse trace files in csv format.
 */
#include <iostream>
#include <fstream>
#include <sstream>
#include <cstdlib>
#include "field.h"
#include "useful.h"
#include "analyser.h"
#include "countcode.h"
#include "pipelinehazard.h"
#include "branchhazard.h"

//#define ANALYSER	Analyser
//#define ANALYSER	CountCode
//#define ANALYSER	PipelineHazard
#define ANALYSER	BranchHazard

#define READ_LIMIT	10000000

using namespace std;

int main(int argc, char *argv[])
{
	if (argc != 2) {
		cerr << "Usage: " << argv[0] << " file" << endl;
		return 1;
	}
	srand(time(NULL));
	Analyser *analyser = new ANALYSER;
	analyser->init();
	unsigned int counter = 0;
	std::ifstream traceFile;
	traceFile.open(argv[1]);
	while (counter < READ_LIMIT) {
		std::stringstream ls;
		std::string val, row;
		std::vector < std::string > all;
		if (!traceFile.good())
			break;
		traceFile >> row;
		if (row.empty())
			continue;
		ls.str(row);
		while (std::getline(ls, val, ','))
			all.push_back(val);
		if (all.size() != FIELD_COUNT) {
			clog << "Bad trace size (" << all.size() \
				<< "), ignore and continue." << endl;
			continue;
		}
		analyser->analyse(&all);
		neatprogress(++counter);
	}
	analyser->report();
	delete analyser;
	clog << "Analysis finished, line count: " << counter << endl;
	return 0;
}
