#include <stdio.h>

int main(void)
{
	int number;
	scanf("%d", &number);
	
	printf("The number next to %d is %d\n", number, number + 1);

	return 0;
}
