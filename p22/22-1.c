#include <stdio.h>
#include <stdlib.h>

void fill_with_random(long *numbers, size_t n) {
	for(size_t i = 0; i < n; i++)
	{
	numbers[i] = rand();
	}
}

long sum(long *numbers, size_t n) {
	long result = 0;
	for(size_t i = 0; i < n; i++)
	{
	result += numbers[i];
	}

	return result;
}

int main(void)
{
	#define n 10000
	long numbers[n];

	fill_with_random(numbers, n);
	long result = sum(numbers, n);
	printf("%ld\n", result);
	
	return 0;
}
