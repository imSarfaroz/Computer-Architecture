#include <stdio.h>

int main(void)
{
	puts("What is your full name?");

	char full_name[512];
	gets(full_name);

	printf("Hello, %s!\n", full_name);

	return 0;
}
