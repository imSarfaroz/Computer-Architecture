#include<stdio.h>
#include<stdlib.h>

int main(int argc,char *argv[])
{
	int sumOfNum = 0, i;

	if(argc <= 1)
	{

	printf("There should be two or more numbers!!!");
	exit(0);
	}

	else
	{
		for (i = 1; i < argc; i++)
		{
			sumOfNum += strtol(argv[i], NULL, 10);
		}
	}

	printf("Sum of numbers is %d\n", sumOfNum); 
}
