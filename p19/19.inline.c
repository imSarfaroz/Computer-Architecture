#include <stdio.h>

int main(void)
{	
	/*
	int n = 0;
	for(int c = 33; c < 127; ++c)
	{
	putchar(c);
	++n;

	if(n % 16 == 0)
		{
		putchar('\n');
		}
	}
	putchar('\n');
	*/

	int n = 0;
	int c = 33;

	asm(
		"jmp L2;"
	"L0:"
		"mov %0, %%edi;"
		"call putchar;"
		"addl $1, %1;"
		"testl $15, %1;"
		"jne L1;"
		"mov $10, %%edi;"
		"call putchar;"
	"L1:"
		"addl $1, %0;"
	"L2:"
		"cmpl $126, %0;"
		"jle L0;"
		: "+m"(c), "+m"(n)
		:
		: "edi"
	);

	putchar('\n');
	return 0;
}

