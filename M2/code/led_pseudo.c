bool LEDA = 0, LEDB = 0;
int LEDALight = 125, LEDADark = 250 - 125;
int LEDBLight = 100, LEDBDark = 333 - 100;
int LEDACounter = 0, LEDBCounter = 0;

forever {
	if (LEDACounter-- == 0) {
		LEDACounter = LEDA ? LEDADark : LEDALight;
		LEDA = !LEDA;
	}
	if (LEDBCounter-- == 0) {
		LEDBCounter = LEDB ? LEDBDark : LEDBLight;
		LEDB = !LEDB;
	}
	delay_ms(1);
}
