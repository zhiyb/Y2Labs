/*
* Defines parameters to control the lift.
*/
enum States {At0 = 0, At1, At2, To0, To1, To2};

// PORTC
#define Button0 _BV(0)
#define Button1	_BV(1)
#define Button2 _BV(2)
#define Floor0	_BV(3)
#define Floor1m	_BV(4)
#define Floor1p	_BV(5)
#define Floor2	_BV(6)

// PORTA
#define Lamp0	_BV(0)
#define Lamp1	_BV(1)
#define Lamp2	_BV(2)
#define MotorOn	_BV(3)
#define MotorDn	_BV(4)

#define STATIC	0x00

void lift(void);
