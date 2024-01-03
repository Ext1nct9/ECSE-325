#include<sys/time.h>
#include<stdio.h>
 
int SetTimer(struct timeval *tv, time_t sec)
{
    gettimeofday(tv,NULL);
    tv->tv_sec+=sec;
 
    return 1;
}
////////////////////////////////////////////////// 
int CheckTimer(struct timeval *tv, time_t sec)
{
    struct timeval ctv;
    gettimeofday(&ctv,NULL);
 
    if( (ctv.tv_sec >= tv->tv_sec) )
    {
        gettimeofday(tv,NULL);
        tv->tv_sec+=sec;
        return 1;
    }
    else {
	 return 0;
	}
}

///////////////////////////////////////////


// Simple test program
int main(void)
{
volatile int * led = (int *) 0xFF200420; // red LED address (replace theses addresses with the ones from Qsys)
volatile int * switchptr = (int *) 0xFF200410; // SW slider switch address
int switch_value;

struct timeval tv;
SetTimer(&tv,1); 

int secs = 0;
int secs_tens = 0;
int mins = 0;
int mins_tens = 0;
int hours = 0;
int hours_tens = 0;

while (1)
{
if (CheckTimer(&tv,1)==1) {
	secs++;
	if (secs == 10) {
	secs = 0;
	secs_tens++;
	if (secs_tens == 6) {
		secs_tens = 0;
		mins++;
		if (mins == 10) {
			mins = 0;
			mins_tens++;
			if (mins_tens == 6) {
				mins_tens = 0;
				hours++;
				if (hours == 10 || ((hours_tens == 1) && (hours == 2))) {
					hours = 0;
					hours_tens++;
					if (hours_tens == 2) {
						hours_tens = 0;
					}
				}
			}
		}
	}
}
}
  
switch_value = *(switchptr);
*(led) = switch_value;
}
}
