#include <iostream>
#include "useful.h"

/*
 * This function counts things into a map. It is slightly more complicated than
 * the inline version as the map must be passed as a pointer. The at() method is
 * used in place of [].
 */
void countthings(std::map < std::string, int >*hold, std::string val)
{
	std::map < std::string, int >::iterator it;
	it = hold->find(val);
	if (it == hold->end())
		hold->insert(std::pair < std::string, int >(val, 1));
	else
		hold->at(val)++;
}

/*
 * Wraps the thousands and millions progress messages into 1 function.
 */
void neatprogress(int counter)
{
	if (counter % 100000 == 0) {
		if (counter > 999999)
			std::clog << (float)counter / 1000000.0 << " Million Lines Processed\n";
		else
			std::clog << (float)counter / 1000.0 << " Thousand Lines processed\n";
	}
}
