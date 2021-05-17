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
	const size_t n = 10000;
	long *numbers = malloc(n * sizeof(*numbers));

	fill_with_random(numbers, n);
	long result = sum(numbers, n);
	printf("%ld\n", result);
	
	free(numbers);

	return 0;
}
