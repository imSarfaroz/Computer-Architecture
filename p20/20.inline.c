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
	
	/*
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
	*/

	unsigned int month;
        scanf("%u", &month);

	char *winter = "Winter";
	char *spring = "Spring";
	char *fall = "Fall";
	char *summer = "Summer";
	char *invalid = "Invalid month number.";

asm(
	"cmpl $12, %0;"
	"ja L4;"
	"mov %0, %%eax;"
	"jmp *L5(,%%eax, 8);"
"L0:"
	"mov %1, %%rdi;"
	"call puts;"
	"jmp L6;"
"L1:"
	"mov %2, %%rdi;"
        "call puts;"
        "jmp L6;"
"L2:"
	"mov %3, %%rdi;"
        "call puts;"
        "jmp L6;"
"L3:"
	"mov %4, %%rdi;"
        "call puts;"
        "jmp L6;"
"L4:"
	"mov %5, %%rdi;"
        "call puts;"
        "jmp L6;"

"L5:"
	".quad L4;"
	".quad L0;"
	".quad L0;"
	".quad L1;"
	".quad L1;"
        ".quad L1;"
        ".quad L2;"
        ".quad L2;"
	".quad L2;"
        ".quad L3;"
        ".quad L3;"
        ".quad L3;"
	".quad L0;"
"L6:"
	:
	:"m"(month), "m"(winter), "m"(spring), "m"(summer), "m"(fall), "m"(invalid)
	:"rdi", "eax"
);

	
	return 0;

}
