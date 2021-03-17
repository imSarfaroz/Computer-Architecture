.section .data

# static const char *output_format = "%ld\n";
output_format:
    .string "%ld\n"

.section .text

	add1:
	movslq %edi, %rax
        ret

	# static long add2(int a, int b) { ...
	add2:
	movslq %edi, %rax
	movslq %esi, %rsi
	add %rsi, %rax
	ret

	# static long add3(int a, int b, int c) { ...
        add3:
        movslq %edi, %rax
        movslq %esi, %rsi
	movslq %edx, %rdx
        add %rsi, %rax
	add %rdx, %rax

        ret

	# static long add4(int a, int b, int c, int d) { ...
        add4:
        movslq %edi, %rax
        movslq %esi, %rsi
        movslq %edx, %rdx
        movslq %ecx, %rcx

        add %rsi, %rax
        add %rdx, %rax
        add %rcx, %rax

        ret

	# static long add5(int a, int b, int c, int d, int e) { ...
        add5:
        movslq %edi, %rax
        movslq %esi, %rsi
        movslq %edx, %rdx
        movslq %ecx, %rcx
        movslq %r8d, %r8

        add %rsi, %rax
        add %rdx, %rax
        add %rcx, %rax
        add %r8, %rax

        ret

	# static long add6(int a, int b, int c, int d, int e, int f) { ...
	add6:
	movslq %edi, %rax
	movslq %esi, %rsi
	movslq %edx, %rdx
	movslq %ecx, %rcx
	movslq %r8d, %r8
	movslq %r9d, %r9

	add %rsi, %rax
	add %rdx, %rax
	add %rcx, %rax
	add %r8, %rax
	add %r9, %rax

	ret

	#static long add7
	add7:
	movslq %edi, %rax
        movslq %esi, %rsi
        movslq %edx, %rdx
        movslq %ecx, %rcx
        movslq %r8d, %r8
        movslq %r9d, %r9
	movslq 8(%rsp), %r10

	add %rsi, %rax
        add %rdx, %rax
        add %rcx, %rax
        add %r8, %rax
        add %r9, %rax
	add %r10, %rax

	ret

	# static long add8
	add8:
        movslq %edi, %rax
        movslq %esi, %rsi
        movslq %edx, %rdx
        movslq %ecx, %rcx
        movslq %r8d, %r8
        movslq %r9d, %r9
        movslq 8(%rsp), %r10
	movslq 16(%rsp), %r11

        add %rsi, %rax
        add %rdx, %rax
        add %rcx, %rax
        add %r8, %rax
        add %r9, %rax
        add %r10, %rax
	add %r11, %rax

        ret

	# static long add9
        add9:
        movslq %edi, %rax
        movslq %esi, %rsi
        movslq %edx, %rdx
        movslq %ecx, %rcx
        movslq %r8d, %r8
        movslq %r9d, %r9
        movslq 8(%rsp), %r10
        movslq 16(%rsp), %r11
	movslq 24(%rsp), %r12

        add %rsi, %rax
        add %rdx, %rax
        add %rcx, %rax
        add %r8, %rax
        add %r9, %rax
        add %r10, %rax
        add %r11, %rax
	add %r12, %rax

        ret

	# static long add10
        add10:
        movslq %edi, %rax
        movslq %esi, %rsi
        movslq %edx, %rdx
        movslq %ecx, %rcx
        movslq %r8d, %r8
        movslq %r9d, %r9
        movslq 8(%rsp), %r10
        movslq 16(%rsp), %r11
        movslq 24(%rsp), %r12
	movslq 32(%rsp), %r13

        add %rsi, %rax
        add %rdx, %rax
        add %rcx, %rax
        add %r8, %rax
        add %r9, %rax
        add %r10, %rax
        add %r11, %rax
        add %r12, %rax
	add %r13, %rax

        ret

	# int main() {...
	.global main
	main:
	push %rbp
	mov %rsp, %rbp

	# printf(output_format, add1(1)));
	mov $1, %edi
	call add1
	lea output_format(%rip), %rdi
	mov %rax, %rsi
	xor %eax, %eax
	call printf@plt

	# printf(output_format, add2(1, 2));
	mov $1, %edi
	mov $2, %esi
	call add2
	lea output_format(%rip), %rdi
	mov %rax, %rsi
	xor %eax, %eax
	call printf@plt

	# printf(output_format, add3(1, 2, 3))
        mov $1, %edi
        mov $2, %esi
        mov $3, %edx
        call add3
        lea output_format(%rip), %rdi
        mov %rax, %rsi
        xor %eax, %eax
        call printf@plt

	# printf(output_format, add4(1, 2, 3, 4))
        mov $1, %edi
        mov $2, %esi
        mov $3, %edx
        mov $4, %ecx
        call add4
        lea output_format(%rip), %rdi
        mov %rax, %rsi
        xor %eax, %eax
        call printf@plt

	# printf(output_format, add6(1, 2, 3, 4, 5))
        mov $1, %edi
        mov $2, %esi
        mov $3, %edx
        mov $4, %ecx
        mov $5, %r8d
        call add5
        lea output_format(%rip), %rdi
        mov %rax, %rsi
        xor %eax, %eax
        call printf@plt


	# printf(output_format, add6(1, 2, 3, 4, 5, 6))
	mov $1, %edi
        mov $2, %esi
        mov $3, %edx
        mov $4, %ecx
        mov $5, %r8d
        mov $6, %r9d
	call add6
        lea output_format(%rip), %rdi
        mov %rax, %rsi
        xor %eax, %eax
        call printf@plt


	# printf(output_format, add7(1, 2, 3, 4, 5, 6, 7))
	mov $1, %edi
	mov $2, %esi
	mov $3, %edx
	mov $4, %ecx
	mov $5, %r8d
	mov $6, %r9d
	push $7
	call add7
	lea output_format(%rip), %rdi
	mov %rax, %rsi
	xor %eax, %eax
	call printf@plt

	# printf(output_format, add8(1, 2, 3, 4, 5, 6, 7, 8))
        mov $1, %edi
        mov $2, %esi
        mov $3, %edx
        mov $4, %ecx
        mov $5, %r8d
        mov $6, %r9d
        push $7
	push $8
        call add8
        lea output_format(%rip), %rdi
        mov %rax, %rsi
        xor %eax, %eax
        call printf@plt

	# printf(output_format, add7(1, 2, 3, 4, 5, 6, 7, 8, 9))
        mov $1, %edi
        mov $2, %esi
        mov $3, %edx
        mov $4, %ecx
        mov $5, %r8d
        mov $6, %r9d
        push $7
	push $8
	push $9
        call add9
        lea output_format(%rip), %rdi
        mov %rax, %rsi
        xor %eax, %eax
        call printf@plt

	# printf(output_format, add10(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))
        mov $1, %edi
        mov $2, %esi
        mov $3, %edx
        mov $4, %ecx
        mov $5, %r8d
        mov $6, %r9d
        push $7
        push $8
        push $9
	push $10
        call add10
        lea output_format(%rip), %rdi
        mov %rax, %rsi
        xor %eax, %eax
        call printf@plt

	leave
