#include <stdio.h>

void swap(long *a, long *b)
{
	long temp = *a;
	*a = *b;
	*b = temp;
}

int main(void)
{
	long a, b;
	scanf("%ld %ld", &a, &b);

	swap(&a, &b);

	printf("%ld %ld\n", a, b);

	return 0;
}
