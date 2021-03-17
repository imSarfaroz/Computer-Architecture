.section .rodata

output_format:
        .string "%p\n"

.section .text

# int main(void) {...
.global main
main:
	# rsp points to return address
        push %rbp

	# rsp points to value of rbp
        mov %rsp, %rbp

        mov $output_format, %rdi
	mov 8(%rsp), %rsi
        xor %rax, %rax
        call printf

        leave

        #return 0
	xor %eax, %eax
	ret
