#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
 
int j=0;
uint8_t wyswietl[]={126, 12, 182, 158, 204, 218, 250, 14, 254, 222};
int i=0; 
 
int main (void){
	uint16_t liczba=1854;

	DDRD = 0xff;
	DDRA = 0x0f;
	TCCR1B |= (1<<CS11); //ustawienie preskalera
	TIMSK |= (1<<OCIE1A); //ustawienie bitu przepełnienia
	sei();				//włączenie przerwań globalnych
	while(1){
 
 
	}
}
 
ISR(TIMER1_COMPA_vect) //obsługa przerwania
{
	if(i== 10)
		i=0;
	PORTA = ~1;
	PORTD = ~wyswietl[i];
	if(j==1)
		i++;
	
	else 
		j=0;
	j++;
		
}
