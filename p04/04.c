#include <stdio.h>
#include <string.h>

int main(void)
{
        puts("What is your full name?");

        char full_name[512];
        fgets(full_name, 512, stdin);
	strtok(full_name, "\n");
        printf("Hello, %s!\n", full_name);

        return 0;
}


