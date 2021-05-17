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

	printf(" The number of characteres is %d\n", count);

	return 0;
}
