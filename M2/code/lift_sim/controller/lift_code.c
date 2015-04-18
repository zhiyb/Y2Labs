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
	unsigned char t, q = STATIC, dir = 0, btn = 0;
	unsigned char State = To0;	// Start going down.
	MCUCR |= 0x80;			// Disable JTAG
	MCUCR |= 0x80;
	PORTA = 0xFF;
	DDRC = 0x00;
	PORTC = 0xFF;
	for (;;) {
		vTaskDelay(Seconds2Ticks(.05));	// 20 times per second
		t = ~PINC & 0x7F;	// read lift sensors (negative logic)
		btn |= t & (Button0 | Button1 | Button2);
		q = STATIC;
		switch (State) {
		case To0:
			q = MotorOn | MotorDn;
			if (t & Floor0)
				State = At0;
			break;
		case To1:
			q = MotorOn | dir;
			if (t & Floor1m && t & Floor1p && btn & Button1)
				State = At1;
			break;
		case To2:
			q = MotorOn;
			if (t & Floor2)
				State = At2;
			break;
		case At0:
			btn &= ~Button0;
			if (btn & (Button1 | Button2)) {
				dir = 0;	// Up
				State = To1;
			}
			break;
		case At1:
			btn &= ~Button1;
			if (dir && btn & Button0)	// Moving downward
				State = To0;
			else if (!dir && btn & Button2)	// Moving upward
				State = To2;
			else if (btn & Button0)
				State = To0;
			else if (btn & Button2)
				State = To2;
			break;
		case At2:
			btn &= ~Button2;
			if (btn & (Button0 | Button1)) {
				dir = MotorDn;	// Down
				State = To1;
			}
			break;
		}
		// Set the lift control bits
		//q |= (btn & Button0) ? Lamp0 : 0;
		//q |= (btn & Button1) ? Lamp1 : 0;
		//q |= (btn & Button2) ? Lamp2 : 0;
		q |= btn;
		PORTA = (~q) & 0x1F;
	}
}
