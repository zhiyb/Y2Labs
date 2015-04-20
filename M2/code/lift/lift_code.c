#include <avr/interrupt.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "lift.h"
#include "util.h"

static xQueueHandle xRxedChars;

/*
Remember T0 is bottom floor, T2 is top and T1 or TM is the middle which is not used.
This task spends most of its time sleeping, so the infinite loop does not stop other things working.
*/
void lift(void)
{
	unsigned char t, q = STATIC, dir = 0, btn = 0;
	unsigned char State = To0;	// Start going down.
	PORTA = 0xFF;
	DDRC = 0x00;
	PORTC = 0xFF;

	// We must take care enabelling interupts as we dont know what else is going on.
	portENTER_CRITICAL();		// Create queue and enable interupts. Dont want anything getting in the way
	xRxedChars = xQueueCreate(4, (unsigned portBASE_TYPE)sizeof(signed portCHAR));
	PCMSK1 = 0x7F;		// Enable PORTC pin change interrupts
	GICR = 0x10;		// Enable pin change interrupt 1
	portEXIT_CRITICAL();

	for (;;) {
		unsigned char store;
		while (!xQueueReceive(xRxedChars, &store, 250));	// never time out
		t = ~store & 0x7F;	// read lift sensors (negative logic)
		btn |= t & (Button0 | Button1 | Button2);
run:
		q = STATIC;
		switch (State) {
		case To0:
			q = MotorOn | MotorDn;
			if (t & Floor0) {
				State = At0;
				goto run;
			}
			break;
		case To1:
			q = MotorOn | dir;
			if (t & Floor1m && t & Floor1p) {
				if (btn & Button1)
					State = At1;
				else if (dir)	// Moving downward
					State = To0;
				else
					State = To2;
				goto run;
			}
			break;
		case To2:
			q = MotorOn;
			if (t & Floor2) {
				State = At2;
				goto run;
			}
			break;
		case At0:
			btn &= ~Button0;
			if (btn & (Button1 | Button2)) {
				dir = 0;		// Up
				State = To1;
				goto run;
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
			else
				break;
			goto run;
		case At2:
			btn &= ~Button2;
			if (btn & (Button0 | Button1)) {
				dir = MotorDn;	// Down
				State = To1;
				goto run;
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

ISR(PCINT1_vect)
{
	static portCHAR prt;
	prt = PINC;	//Post value of PINC to queue
	xQueueSendFromISR(xRxedChars, &prt, pdFALSE);
}
