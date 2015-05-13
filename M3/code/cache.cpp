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
	int addr = toInt(trace->at(field::PhyAddr));
	int tag = (addr >> (BUS_BIT_SIZE - TAG_BIT_SIZE)) & ((1 << TAG_BIT_SIZE) - 1);
	int offset = (addr >> BLOCK_BIT_SIZE) & ((1 << CACHE_BIT_SIZE) - 1);
	if (cache[offset].valid && cache[offset].tag == tag) {
		hitTmp++;
		hit++;
	}
	if (total % CACHE_LOG == 0) {
		hits.push_back(hitTmp);
		hitTmp = 0;
	}
	cache[offset].tag = tag;
	cache[offset].valid = true;
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
	cout << "Hits:" << endl;
	for (vector<int>::iterator it = hits.begin(); it != hits.end(); ++it)
		cout << *it << endl;
}
