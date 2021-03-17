.section .rodata

output_format:
	.string "%p\n"

.section .text

#int main(void) {...
.global main
main:
	stp x29, x30, [sp, -32]!
	mov x29, sp

	#	x0		x1
	#printf("%p\n", __builtin_return_address(0))
	adr x0, output_format
	mov x1, x30
	bl printf

	ldp x29, x30, [sp], 32

	#return 0;
	mov w0, 0
	ret
