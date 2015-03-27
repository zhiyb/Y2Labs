#include "FreeRTOS.h"
#include "task.h"
#include "lift.h"
#include "util.h"

/*

Remember T0 is bottom floor, T2 is top and T1 or TM is the middle which is not used.

This task spends most of its time sleeping, so the infinite loop does not stop other things working.

*/
void lift(void)
{
	unsigned char t, q = STATIC;
	unsigned char State;	// Start going down.
	PORTA = 0xFF;
	State = To0;
	for (;;) {
		vTaskDelay(Seconds2Ticks(.05));	// 20 times per second
		t = PINC;	// read lift sensors from port B
		t = (~t) & 0x7F;	// Lift is negative logic
		switch (State) {
		case To0:
			q = MotorOn | MotorDn | Lamp0;
			if (t & Floor0)
				State = At0;
			else
				State = To0;
			break;
		case To2:
			q = MotorOn | Lamp2;
			if (t & Floor2)
				State = At2;
			else
				State = To2;
			break;
		case At0:
			q = STATIC;
			if (t & Button2)
				State = To2;
			else
				State = At0;
			break;
		case At2:
			q = STATIC;
			if (t & (Button0 | Button1))
				State = To0;
			else
				State = At2;
			break;
		}
		// Set the lift control bits
		PORTB = q;
		PORTA = (~q) & 0x1F;
	}
}
