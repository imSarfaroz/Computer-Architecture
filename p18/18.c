#include <stdio.h>

int main(void)
{
	char input;
	int count = 0;

	while((input = getchar()) != EOF)
	{
	++count;
	}

	printf(" The number of characteres is %d\n", count);

	return 0;
}
