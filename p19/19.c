#include <stdio.h>

int main(void)
{
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
}

