/*
Based on the WinAVR examples of FreeRTOS, this is code for a Atmel ATmega162.
The origional was written by
It is much simplier than the original example program and shows what minimal code
is needed to create multitasking threads.

The program will create and run two tasks. Each task flashes an LED.
NOTE: each pin of the ATmega128 can sink at maximum 20mA! All ports together can sink at maximum 200mA!
The LEDs will blink at different flash rates. To change this rates you need to
edit the values for the delays in  "LEDFlashTask"1 and "LEDFlashTask2".
*/

//FreeRTOS include files
#include "FreeRTOS.h"
#include "task.h"
#include "ecsmacros.h"

void LEDFlashTask1(void *pvParameters);//1st task
void LEDFlashTask2(void *pvParameters);//2nd task

void Init( void ){//Set DDR-registers and initial state of the LEDs
	DDRB = 0xff; // Set port B direction to outputs.  Start with all output off.
	PORTB = 0x00;
}

int main(void)
{
	Init();
	//start tasks with task priority "tskIDLE_PRIORITY"
	//Create task 1.
	xTaskCreate( LEDFlashTask1, // Task Function
                        (const signed portCHAR *) "LEDtask1",  // Task Name (useful when simulating)
                        configMINIMAL_STACK_SIZE, // Size of task stack
                        ( void * )  NULL, // Parameter to pass to task at start up, not used here
                        (unsigned portBASE_TYPE) tskIDLE_PRIORITY+1, // Task priority
                        ( xTaskHandle * ) NULL ); // Pointer to reference task with, not used here.

    // Create task2.
	xTaskCreate( LEDFlashTask2, // Task Function
                        (const signed portCHAR *) "LEDtask2",  // Task Name (useful when simulating)
                        configMINIMAL_STACK_SIZE, // Size of task stack
                        ( void * )  NULL, // Parameter to pass to task at start up, not used here
                        (unsigned portBASE_TYPE) tskIDLE_PRIORITY+1, // Task priority
                        ( xTaskHandle * ) NULL ); // Pointer to reference task with, not used here.
    // Start OS and scheduler
	vTaskStartScheduler(); //Should never return
	return 0;
}

portTickType Seconds2Ticks(const float s){
    return (portTickType) (s * (const float) configTICK_RATE_HZ);
}
void LEDFlashTask1(void *pvPs){//1st task, this task will flash a LED on pin PB0
	for(;;){
		vTaskDelay( Seconds2Ticks(1.)); // Delay for half the flash period then turn the LED on.
        Bit_SET(PORTB, 0);
		vTaskDelay(Seconds2Ticks(1.));// Delay for half the flash period then turn the LED off.
        Bit_CLEAR(PORTB, 0);
	}
}
void LEDFlashTask2(void *pvPs){//2nd task, this task will flash a LED on pin PB1
	for(;;) 	{
		vTaskDelay( Seconds2Ticks(.3)); // Delay for half the flash period then turn the LED on.
        Bit_SET(PORTB, 1);
		vTaskDelay(Seconds2Ticks(.3));// Delay for half the flash period then turn the LED off.
        Bit_CLEAR(PORTB, 1);
	}
}

//~ void LEDFlashTask2(void *pvPs){//alternative 2nd task, this task will flash a LED on pin PB1
	//~ for(;;) 	{
        //~ Bit_SET(PORTB, 1);
        //~ Bit_CLEAR(PORTB, 1);
	//~ }
//~ }

