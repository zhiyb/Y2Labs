/*
* Defines parameters to control the lift.
*/
#define At0	0x00
#define At1	0x01
#define At2	0x02
#define To0	0x03
#define To1	0x04
#define To2	0x05

#define Button0 _BV(0)
#define Button1	_BV(1)
#define Button2 _BV(2)
#define Floor0	_BV(3)
#define Floor1m	_BV(4)
#define Floor1p	_BV(5)
#define Floor2	_BV(6)

#define Lamp0	_BV(0)
#define Lamp1	_BV(1)
#define Lamp2	_BV(2)
#define MotorOn	_BV(3)
#define MotorDn	_BV(4)

#define STATIC	0x00

void lift(void);
