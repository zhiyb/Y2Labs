/*
* Useful Functions
*/
#include "FreeRTOS.h"

static inline portTickType Seconds2Ticks(const float s)
{
	return (portTickType) (s * configTICK_RATE_HZ);
}
