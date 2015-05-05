#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <map>
#include <stdlib.h>
#include "useful.cpp"

#define LIMIT	10000000

using namespace std;

int main(int argc, char *argv[])
{
	if (argc != 2) {
		cerr << "Usage: " << argv[0] << " file" << endl;
		return 1;
	}
	std::ifstream traceFile;
	std::map < std::string, int >frequency;
	std::map < std::string, int >::iterator it;
	int counter = 0;
	traceFile.open(argv[1]);
	while (counter < LIMIT) {
		std::stringstream ls;
		std::string val, row;
		std::vector < std::string > all;
		if (!traceFile.good())
			break;
		traceFile >> row;
		if (row.empty())
			continue;
		ls.str(row);
		while (std::getline(ls, val, ',')) {
			all.push_back(val);
		}
		if (all.size() != 14) {
			clog << all.size() << " Bad trace size, ignore and continue.\n";
			continue;
		}

		countthings(&frequency, all[13]);
		neatprogress(++counter);
	}
	cout << frequency.size() << " different instructions used\n";
	for (it = frequency.begin(); it != frequency.end(); ++it)
		cout << it->first << " => " << it->second << '\n';
	return 0;
}
