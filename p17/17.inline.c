#include <stdio.h>
#include <stdbool.h>

int main(void)
{

	/*
	char letter = getchar();
	bool is_whitespace = false;
	if(letter == ' '){
		is_whitespace = true;
	}else if(letter == '\t'){
		is_whitespace = true;
	}
	*/
	// Pretend that we only have one-way if and goto
	
	/*
	bool is_whitespace = false;
	if(letter != 32){
	goto L0;
	}
	is_whitespace = true;
	goto L1;

	L0:
	if(letter != 9){
	goto L1;
	}
	is_whitespace = true;
	
	L1:
	// --
	*/
	char letter = getchar();
	bool is_whitespace;

	asm(
	"movl $0, %0;"
	"cmpb $32, %1;"
	"jne L0;"
	"movl $1, %0;"
	"jmp L1;"
	"L0:"
	"cmpb $9, %1;"
	"jne L1;"
	"movl $1, %0;"
	"L1:"
		: "=m"(is_whitespace)
		: "m"(letter)
		:
	);

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
