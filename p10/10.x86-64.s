.section .rodata

input_format:
        .string "%ld %ld"
output_format:
	.string "%ld * %ld = %ld\n"

.section .data

a:
	.long 0, 0
b:
	.long 0, 0

.section .text

# int main(void) {...
.global main
main:
        push %rbp
        mov %rsp, %rbp

	#	rdi     rsi rdx
        # scanf("%ld %ld", &a, &b);
        mov $input_format, %rdi
	mov $a, %rsi
	mov $b, %rdx
	xor %rax, %rax
        call scanf

	# (a * b)
	mov a, %rsi
	mov %rsi, %rcx
	mov b, %rdx
	imul %rdx, %rcx

	# 	          rdi      rsi  rdx  rcx
	# printf("%ld * %ld = %ld\n", a, b, c);
        mov $output_format, %rdi
        xor %rax, %rax
        call printf

        leave

	#return 0
        xor %rax, %rax
	ret
