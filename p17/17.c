#include <stdio.h>
#include <stdbool.h>

int main(void)
{

	char letter = getchar();
	
	bool is_whitespace = false;
	if(letter == ' '){
		is_whitespace = true;
	}else if(letter == '\t'){
		is_whitespace = true;
	}

	if(is_whitespace)
        {
        	puts("Whitespace");
	}else{
        	puts("Not a whitespace");
        }


	/*
	if(letter == ' ' || letter == '\t')
	{
	puts("Whitespace");
	puts("Not whitespace");
	}
	*/

	return 0;

	// puts(letter == ' ' || letter == '\t' ? "Whitespace" : "Not whitespace");
}
