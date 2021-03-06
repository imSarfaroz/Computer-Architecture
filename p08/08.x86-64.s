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
        push %rbp
        mov %rsp, %rbp

		rdi     rsi
        # scanf("%ld", &num);
        mov $input_format, %rdi
	mov $num, %rsi
	mov $0, %rax
        call scanf

	# num++
	mov num, %rsi
	inc %rsi
	
	# 	rdi     rsi
	# printf("%ld\n", num);
        mov $output_format, %rdi
        mov $0, %rax
        call printf

        leave

        mov $0, %eax
	ret
