.section .rodata

message:
	.string "hello, world"

.section .text

# int main(void) {...
.global main
main:
	push %rbp
	mov %rsp, %rbp
	
	# puts "hello world"
	mov $message, %rdi
	call puts

	leave

	mov $0, %eax
	ret
