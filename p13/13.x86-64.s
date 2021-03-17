.section .rodata

input_format:
        .string "%ld %ld"
output_format:
	.string "%ld + %ld = %ld\n"

.section .text

# int main(void) {...
.global main
main:
	# enter
        push %rbp
        mov %rsp, %rbp

	# long a, b
	sub $16, %rsp # {

	#	rdi     rsi rdx
        # scanf("%ld %ld", &a, &b);
        mov $input_format, %rdi
	lea 8(%rsp), %rsi
	lea (%rsp), %rdx
	xor %rax, %rax
        call scanf

	# a + b
	mov 8(%rsp), %rsi
	mov %rsi, %rcx
	mov (%rsp), %rdx
	add %rdx, %rcx

	# 	          rdi      rsi  rdx  rcx
	# printf("%ld + %ld = %ld\n", a, b, c);
        mov $output_format, %rdi
        xor %rax, %rax
        call printf

	leave
	# mov %rbp, %rsp
	# pop %rbp

	#return 0
        xor %eax, %eax
	ret
