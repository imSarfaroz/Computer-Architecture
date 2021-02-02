#include <stdio.h>

int main(void)
{
        puts("What is your full name?");

        char full_name[512];
        fgets(full_name, 512, stdin);

        printf("Hello, %s!", full_name);

        return 0;
}


