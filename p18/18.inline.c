#include <stdio.h>

int main(void)
{
	/*
	char input;
	int count = 0;

	while((input = getchar()) != EOF)
	{
	++count;
	}
	*/
	
	/*
	char input;
	int count = 0;
	goto L1;
L0:
	++count;
L1:
	input = getchar();
	if (input != -1){
		goto L0;
	}
	*/

	int count = 0;

	asm(
		"jmp L1;"
	"L0:"
		"add $1, %0;"
	"L1:"
		"call getchar;"
		"cmp $-1, %%al;"
		"jne L0;"
		: "=m" (count)
		:
		: "eax"
	);

	printf(" The number of characteres is %d\n", count);

	return 0;
}
