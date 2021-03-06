.section .rodata

input_format:
        .string "%ld"
output_format:
        .string "%ld\n"

.section .data

num:
        .long 0, 0

.section .text

# int main(void) {...
.global main
main:
        stp x29, x30, [sp, -32]!
        mov x29, sp

        #       x0     x1
        # scanf("%ld", &num);
        adr x0, input_format
        adr x1, num
        bl __isoc99_scanf

        # num++
        adr x9, num
        ldr x1, [x9]
	add x1, x1, 1

        #       x0     x1
        # printf("%ld\n", num);
        adr x0, output_format
        bl printf

        ldp x29, x30, [sp], 32

	# return 0
        mov w0, 0
        ret
