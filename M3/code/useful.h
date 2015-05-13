#ifndef USEFUL_H
#define USEFUL_H

#include <string>
#include <map>
#include <cstdlib>

void countthings(std::map < std::string, int >*hold, std::string val);
void neatprogress(int counter);
static inline int toInt(const std::string &str)
{return strtol(str.c_str(), 0, 16);}

#endif
