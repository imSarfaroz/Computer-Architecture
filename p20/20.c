#include <stdio.h>

int main(void)
{
	unsigned int month;
	scanf("%u", &month);

	/*
	if(month == 12 || month == 1 || month == 2){
	puts("Winter");
	}else if(month == 3 || month == 4 || month == 5)
        {
        puts("Spring");
        }else if(month == 6 || month == 7 || month == 8)
        {
        puts("Summer");
        }else if(month == 9 || month == 10 || month == 11)
        {
        puts("Fall");
        }else{
	puts("Invalid month number.");
	}
	*/

	switch(month){
	case 12:
	case 1:
	case 2:
		puts("Winter");
		break;
	case 3:
	case 4:
	case 5:
		puts("Spring");
		break;
	case 6:
	case 7:
	case 8:
		puts("Summer");
		break;
	case 9:
	case 10:
	case 11:
		puts("Fall");
		break;
	default:
		puts("Invalid month");
		break;
	}

	return 0;
}
