#include "util.h"

portTickType Seconds2Ticks(const float s)
{				//converts seconds(?) to ticks
	return (portTickType) (s * (const float)configTICK_RATE_HZ);
}
