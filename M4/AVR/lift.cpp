#include "lift.h"

const uint8_t Lift::top_ht = 99, Lift::bottom_ht = 0;
const uint8_t Lift::mid_p_ht = 54, Lift::mid_m_ht = 45;
const uint8_t Lift::lift_ht = 9;

Lift::Lift(void)
{
	data.enable = false;
	data.direction = Down;
	data.height = mid_m_ht;
}

bool Lift::top(void) const
{
	return data.height + lift_ht == top_ht;
}

bool Lift::middlePlus(void) const
{
	return (data.height <= mid_p_ht) && \
		(data.height + lift_ht >= mid_p_ht);
}

bool Lift::middleMinus(void) const
{
	return (data.height <= mid_m_ht) && \
		(data.height + lift_ht >= mid_m_ht);
}

bool Lift::bottom(void) const
{
	return data.height == bottom_ht;
}

bool Lift::move(void)
{
	if (!data.enable)
		return true;
	if (data.direction != Down) {
		if (top())
			return false;
		data.height++;
	} else {
		if (bottom())
			return false;
		data.height--;
	}
	return true;
}
