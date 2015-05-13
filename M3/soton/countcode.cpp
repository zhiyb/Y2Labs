#include <iostream>
#include <fstream>
#include <sstream>

#include <string>
#include <vector>
#include <map>

#include <stdlib.h>

int main()
{
	std::ifstream traceFile;
	std::map < std::string, int >frequency;
	std::map < std::string, int >::iterator it;
	std::string row;
	int counter = 0;
	int limit = 10000000;
	traceFile.open("gcc.trace.csv");
	while (counter < limit) {
		std::stringstream ls;
		std::string val;
		std::vector < std::string > all;
		if (!traceFile.good())
			break;
		traceFile >> row;
		ls.str(row);
		while (std::getline(ls, val, ',')) {
			all.push_back(val);
		}
		if (all.size() != 14) {
			std::cout << all.size() << " Bad trace size, ignore and continue.\n";
			continue;
		}
		val = all[13];
		it = frequency.find(val);
		if (it == frequency.end()) {
			frequency[val] = 1;
		} else {
			frequency[val]++;
		}
		counter++;
		if (counter % 100000 == 0) {
			if (counter > 999999) {
				std::cout << (float)counter / 1000000.0 << " Million Lines Processed\n";
			} else {
				std::cout << (float)counter / 1000.0 << " Thousand Lines processed\n";
			}
		}
	}
	std::cout << frequency.size() << " different instructions used\n";
	for (it = frequency.begin(); it != frequency.end(); ++it) {
		std::cout << it->first << " => " << it->second << '\n';
	}
	return 0;
}
