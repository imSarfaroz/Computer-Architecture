#include <stdio.h>

void swap(long a2, long b2)
{
	long temp = a2;
	a2 = b2;
	b2 = temp;
}

int main(void)
{
	long a, b;
	scanf("%ld %ld", &a, &b);

	swap(a, b);

	printf("%ld %ld\n", a, b);

	return 0;
}
