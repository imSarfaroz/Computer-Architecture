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

	goto L2;
L0:
	putchar(c);
	++n;
	if(n & 15)
	{
	goto L1;
	}

	putchar('\n');
L1:
	++c;
L2:
	if(c <= 126)
	{
	goto L0;
	}
	putchar('\n');

	return 0;
}

