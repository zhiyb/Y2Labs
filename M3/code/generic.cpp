/*
 * Generic Program to load, parse, process and report trace files in csv format.
 */
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <stdlib.h>

#define LIMIT	10000000

using namespace std;

int main(int argc, char *argv[])
{
	if (argc != 2) {
		cerr << "Usage: " << argv[0] << " file" << endl;
		return 1;
	}
	int counter = 0;
	std::ifstream traceFile;
	traceFile.open(argv[1]);
	while (counter < LIMIT) {
		std::stringstream ls;
		std::string val, row;
		std::vector < std::string > all;
		/*
		 *  Initalise for processing here.
		 */
		if (!traceFile.good())
			break;
		traceFile >> row;
		if (row.empty())
			continue;
		ls.str(row);
		while (std::getline(ls, val, ','))
			all.push_back(val);
		if (all.size() != 14) {
			std::cout << all.size()
			    << " Bad trace size, ignore and continue.\n";
			continue;
		}
		/*
		 *  Procesing here
		 */
		counter++;
		if (counter % 100000 == 0) {
			if (counter > 999999) {
				std::cout << (float)counter / 1000000.0 << " Million Lines Processed\n";
			} else {
				std::cout << (float)counter / 1000.0 << " Thousand Lines processed\n";
			}
		}
	}
	/*
	 *  Report results here.
	 */
	std::cout << "Finished, count: " << counter << endl;
	return 0;
}
