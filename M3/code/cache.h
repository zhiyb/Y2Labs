#ifndef CACHE_H
#define CACHE_H

#include <map>
#include <list>
#include <stdint.h>
#include "analyser.h"

#define BUS_BIT_SIZE	23
#define TAG_BIT_SIZE	10
#define BLOCK_BIT_SIZE	3
#define CACHE_BIT_SIZE	(BUS_BIT_SIZE - BLOCK_BIT_SIZE - TAG_BIT_SIZE)

#define CACHE_SIZE	(1 << CACHE_BIT_SIZE)
#define CACHE_LOG	(8137943 / 100000)

class Cache : public Analyser
{
public:
	Cache(void) : hit(0), total(0) {}
	void analyse(const trace_t *trace);
	void report(void);
private:
	struct cache_t {
		cache_t(void) : valid(false) {}
		bool valid;
		uint16_t tag;
		//uint8_t data[1 << BLOCK_SIZE];
	} cache[CACHE_SIZE];	// Offset
	int hitTmp, hit, total;
	std::vector<int> hits;
};

#endif
