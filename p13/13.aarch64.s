.section .rodata

input_format:
	.string "%ld %ld"
output_format:
	.string "%ld + %ld = %ld\n"

.section .text

.global main
main:
	stp x29, x30, [sp, -32]!
	mov x29, sp

	sub sp, sp, 16

	#		x0	x1	x2
	# scanf("%ld %ld", &a, &b);
	adr x0, input_format
	mov x1, sp
	add x2, sp, 8
	bl __isoc99_scanf

	# c = a + b
	ldr x1, [sp]
	ldr x2, [sp, 8]
	add x3, x1, x2
	
	adr x0, output_format
	bl printf

	mov sp, x29
	ldp x29, x30, [sp], 32

	mov w0, 0
	ret
