#include <iostream>
#include "useful.h"
#include "countcode.h"

using namespace std;

void CountCode::analyse(std::vector < std::string > *trace)
{
	countthings(&frequency, trace->at(13));
}

void CountCode::report(void)
{
	std::map < std::string, int > ::iterator it;
	cout << frequency.size() << " different instructions used" << endl;
	for (it = frequency.begin(); it != frequency.end(); ++it)
		cout << it->first << " => " << it->second << endl;
}
