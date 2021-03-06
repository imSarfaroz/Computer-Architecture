.section .rodata

input_format:
        .string "%ld %ld"
output_format:
        .string "%ld + %ld = %ld\n"

.section .data

a:
        .long 0, 0

b:
	.long 0, 0

c:
	.long 0, 0


.section .text

# int main(void) {...

.global main
main:
        stp x29, x30, [sp, -32]!
        mov x29, sp

        #            x0     x1   x2
        # scanf("%ld + %ld", &a, &b);
        adr x0, input_format
        adr x1, a
	adr x2, b
        bl __isoc99_scanf

        # (a + b)
        adr x9, a
	ldr x1, [x9]
	adr x8, b
	ldr x2, [x8]
	adr x3, c
	add x3, x1, x2

        #             x0		x1, x2, x3
        # printf("%ld + %ld = %ld\n", a, b, c);
        adr x0, output_format
        bl printf

        ldp x29, x30, [sp], 32

	# return 0
        mov w0, 0
        ret
