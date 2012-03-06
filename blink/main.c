#include <stm32f4xx.h>

// this is a stub required by newlibc
// ( e.g. malloc() )
void _sbrk(void) {
  // nop
}


// this is yet another stub required by newlibc
// (used for static constructors in c++)
void _init(void) {
  // nop
}


void bogus_delay(unsigned int n) {
	while (n--) { }
}


int main (void) {
	// Struct of PIO Port D
	GPIO_TypeDef *PD = GPIOD;

	// blue LED is PD15
	// set mode to 01 -> output
	PD->MODER = (1 << (15*2));

	// switch LED on (is connected between IO and GND)
	PD->ODR = (1 << 15);

	while(1) {
		PD->ODR = (1 << 15);
		bogus_delay(100000);
		PD->ODR = (0 << 15);
		bogus_delay(100000);
	}
}



