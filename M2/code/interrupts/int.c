/* Lift Controller */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include "ecsmacros.h"
void LEDFlashTask(void *pvParameters);//2nd task
void ButtonTask(void *pvParameters);//lift task
static xQueueHandle xRxedChars;

void Init( void ){//Set DDR-registers and initial state of the LEDs
	DDRB = 0xff; // Set port B direction to outputs.  Start with all output off.
	PORTB = 0x00;
    DDRD = 0x00; //Input and interupt
}

ISR(INT0_vect){ //Catch interrupt 0
    signed portCHAR prt;;
	prt = PORTA;
    xQueueSendFromISR( xRxedChars, &prt, pdFALSE); //Post value of PORTA to queue
}
int main(void)
{
	Init();
    // Create flash task
	xTaskCreate( LEDFlashTask, // Task Function
                        (const signed portCHAR *)"LEDtask2",  // Task Name (useful when simulating)
                        configMINIMAL_STACK_SIZE, // Size of task stack
                        ( void * )  NULL, // Parameter to pass to task at start up, not used here
                        (unsigned portBASE_TYPE) tskIDLE_PRIORITY+1, // Task priority
                        ( xTaskHandle * ) NULL ); // Pointer to reference task with, not used here.
	///create lButton task
    xTaskCreate( ButtonTask, // Task Function
                        (const signed portCHAR *)"Button Push",  // Task Name (useful when simulating)
                        configMINIMAL_STACK_SIZE, // Size of task stack
                        ( void * )  NULL, // Parameter to pass to task at start up, not used here
                        (unsigned portBASE_TYPE) tskIDLE_PRIORITY+1, // Task priority
                        ( xTaskHandle * ) NULL ); // Pointer to reference task with, not used here.
	vTaskStartScheduler(); //Start OS and scheduler,Should never return
	return 0;
}

portTickType Seconds2Ticks(const float s){
    return (portTickType) (s * (const float) configTICK_RATE_HZ);
}

void LEDFlashTask(void *pvPs){//2nd task, this task will flash a LED on pin PB1
	for(;;) 	{
		vTaskDelay( Seconds2Ticks(.25)); // Delay for half the flash period then turn the LED on.
        Bit_SET(PORTB, 1);
		vTaskDelay(Seconds2Ticks(.25));// Delay for half the flash period then turn the LED off.
        Bit_CLEAR(PORTB, 1);
	}
}
void ButtonTask(void *pvPs) {
    unsigned char button = 0;
    // We must take care enabelling interupts as we dont know what else is going on.
	portENTER_CRITICAL();// Create queue and enable interupts. Dont want anything getting in the way
        {
		xRxedChars = xQueueCreate( 4, ( unsigned portBASE_TYPE ) sizeof( signed portCHAR ) );
        MCUCR = MCUCR | 0x03;
        GICR = GICR | 0x40; // Enable interupt 0
        }
	portEXIT_CRITICAL();
    for(;;){
        unsigned char store;
        Bit_SET(PORTB, 2);
        if( xQueueReceive( xRxedChars, &store, 250 * 5 ) ){ // 5 second time out
            button = 1 - button;
            if(button)
                Bit_SET(PORTB, 0);
            else
                Bit_CLEAR(PORTB, 0);
        }
        else	{ //error or time out.
            Bit_CLEAR(PORTB, 2);
            vTaskDelay( Seconds2Ticks(1.)); // Delay for half the flash period then turn the LED on.
        }
    }
}
