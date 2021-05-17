#include <stdio.h>

int main(void)
{

	/*
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
	*/

	unsigned int month;
        scanf("%u", &month);

	if(month > 12){
	goto L4;
	}
	
	void* switch_table[] = {
		&&L4, &&L0, &&L0, &&L1, &&L1, &&L1, &&L2, &&L2, &&L2, &&L3, &&L3, &&L3, &&L0
	};

	goto *switch_table[month];

L0:
	puts("Winter");
	goto L5;
L1:
        puts("Spring");
        goto L5;
L2:
        puts("Summer");
        goto L5;
L3:
        puts("Fall");
        goto L5;
L4:
        puts("Invalid month number.");
L5:
	return 0;
}
