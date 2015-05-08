#include <iostream>
#include "cache.h"
#include "field.h"
#include "useful.h"

using namespace std;

void Cache::analyse(const trace_t *trace)
{
	if (trace->at(field::Uop) != "1")
		return;
	total++;
	int tag = decodeTag(toInt(trace->at(field::PhyAddr)));
	int idx = findCache(tag);
	if (idx == -1)	// Cache overflow
		idx = rand() % CACHE_SIZE;
	else if (cache[idx].valid)
		hit++;
	cache[idx].tag = tag;
	cache[idx].valid = true;
}

int Cache::findCache(uint32_t tag)
{
	int freeCache = -1;
	for (int i = 0; i < CACHE_SIZE; i++)
		if (!cache[i].valid) {
			if (freeCache != -1)
				freeCache = i;
		} else if (cache[i].tag == tag)
			return i;
	return freeCache;
}

void Cache::report(void)
{
	cout << total << " cache accesses" << endl;
	cout << hit << " hit" << endl;
	cout << ((float)hit / total) << " hit rate" << endl;
	int unused = 0;
	for (int i = 0; i < CACHE_SIZE; i++)
		if (!cache[i].valid)
			unused++;
	cout << unused << " unused cache entries" << endl;
}
