.section .data

# static const char *output_format = "%ld\n";
output_format:
    .string "%ld\n"

.section .text

        # statuc long add1(int a)
	add1:
        sxtw x0, w0
        ret
	
        # static long add2(int a, int b) { ...
        add2:
        sxtw x0, w0
        sxtw x1, w1
        add x0, x0, x1
        ret

        # static long add3(int a, int b, int c) { ...
        add3:
        sxtw x0, w0
        sxtw x1, w1
	sxtw x2, w2
        add x0, x0, x1
        add x0, x0, x2
        ret

	# static long add3(int a, int b, int c, int d) { ...
	add4:
        sxtw x0, w0
        sxtw x1, w1
        sxtw x2, w2
	sxtw x3, w3
        add x0, x0, x1
        add x0, x0, x2
	add x0, x0, x3
        ret

	# static long add3(int a, int b, int c, int d, int e) { ...
	add5:
        sxtw x0, w0
        sxtw x1, w1
        sxtw x2, w2
        sxtw x3, w3
	sxtw x4, w4
        add x0, x0, x1
        add x0, x0, x2
        add x0, x0, x3
	add x0, x0, x4
        ret

	# static long add3(int a, int b, int c, int d, int e, int f) { ...
	add6:
        sxtw x0, w0
        sxtw x1, w1
        sxtw x2, w2
        sxtw x3, w3
        sxtw x4, w4
	sxtw x5, w5
        add x0, x0, x1
        add x0, x0, x2
        add x0, x0, x3
        add x0, x0, x4
	add x0, x0, x5
        ret

	# static long add7(int a, int b, int c, int d, int e, int f, int g) { ...
	add7:
        sxtw x0, w0
        sxtw x1, w1
        sxtw x2, w2
        sxtw x3, w3
        sxtw x4, w4
        sxtw x5, w5
        sxtw x6, w6
        add x0, x0, x1
        add x0, x0, x2
        add x0, x0, x3
        add x0, x0, x4
        add x0, x0, x5
        add x0, x0, x6
        ret

	# static long add8(int a, int b, int c, int d, int e, int f, int h) { ...
	add8:
        sxtw x0, w0
        sxtw x1, w1
        sxtw x2, w2
        sxtw x3, w3
        sxtw x4, w4
        sxtw x5, w5
        sxtw x6, w6
        sxtw x7, w7
        add x0, x0, x1
        add x0, x0, x2
        add x0, x0, x3
        add x0, x0, x4
        add x0, x0, x5
        add x0, x0, x6
        add x0, x0, x7
        ret

	# static long add9(int a, int b, int c, int d, int e, int f, int h, int j) { ...
	add9:
        sxtw x0, w0
        sxtw x1, w1
        sxtw x2, w2
        sxtw x3, w3
        sxtw x4, w4
        sxtw x5, w5
        sxtw x6, w6
        sxtw x7, w7
        ldr w8, [sp]
        sxtw x8, w8
        add x0, x0, x1
        add x0, x0, x2
        add x0, x0, x3
        add x0, x0, x4
        add x0, x0, x5
        add x0, x0, x6
        add x0, x0, x7
        add x0, x0, x8
        ret

	# static long add10(int a, int b, int c, int d, int e, int f, int h, int j, int k) { ...
	add10:
        sxtw x0, w0
        sxtw x1, w1
        sxtw x2, w2
        sxtw x3, w3
        sxtw x4, w4
        sxtw x5, w5
        sxtw x6, w6
        sxtw x7, w7
        ldr w8, [sp, 8]
        sxtw x8, w8
        ldr w9, [sp]
        sxtw x9, w9
        add x0, x0, x1
        add x0, x0, x2
        add x0, x0, x3
        add x0, x0, x4
        add x0, x0, x5
        add x0, x0, x6
        add x0, x0, x7
        add x0, x0, x8
        add x0, x0, x9
        ret


.global main
main:
        stp x29, x30, [sp, -32]!
        mov x29, sp

        # printf(output_format, add1(1)));
	mov w0, 1
	bl add1
	mov x1, x0
        adr x0, output_format
        bl printf
	
	# printf(output_format, add2(2)));
        mov w0, 1
	mov w1, 2
        bl add2
        mov x1, x0
        adr x0, output_format
        bl printf

	# printf(output_format, add3()));
        mov w0, 1
        mov w1, 2
	mov w2, 3
        bl add3
        mov x1, x0
        adr x0, output_format
        bl printf

	# printf(output_format, add4()));
	mov w0, 1
        mov w1, 2
        mov w2, 3
	mov w3, 4
        bl add4
        mov x1, x0
        adr x0, output_format
        bl printf

	# printf(output_format, add5()));
        mov w0, 1
        mov w1, 2
        mov w2, 3
        mov w3, 4
        mov w4, 5
        bl add5
        mov x1, x0
        adr x0, output_format
        bl printf

	# printf(output_format, add6()));
        mov w0, 1
        mov w1, 2
        mov w2, 3
        mov w3, 4
        mov w4, 5
        mov w5, 6
        bl add6
        mov x1, x0
        adr x0, output_format
        bl printf

        # printf(output_format, add7()));
        mov w0, 1
        mov w1, 2
        mov w2, 3
        mov w3, 4
        mov w4, 5
        mov w5, 6
        mov w6, 7
        bl add7
        mov x1, x0
        adr x0, output_format
        bl printf

        # printf(output_format, add8()));
        mov w0, 1
        mov w1, 2
        mov w2, 3
        mov w3, 4
        mov w4, 5
        mov w5, 6
        mov w6, 7
        mov w7, 8
        bl add8
        mov x1, x0
        adr x0, output_format
        bl printf

        # printf(output_format, add9()));
        mov w0, 1
        mov w1, 2
        mov w2, 3
        mov w3, 4
        mov w4, 5
        mov w5, 6
        mov w6, 7
        mov w7, 8
        mov w8, 9
        str w8, [sp, -8]!
        bl add9
        mov x1, x0
        adr x0, output_format
        bl printf
        
        # printf(output_format, add10()));
        mov w0, 1
        mov w1, 2
        mov w2, 3
        mov w3, 4
        mov w4, 5
        mov w5, 6
        mov w6, 7
        mov w7, 8
        mov w9, 10
        str w9, [sp, -8]!
        bl add10
        mov x1, x0
        adr x0, output_format
        bl printf
	
	mov sp, x29
        ldp x29, x30, [sp], 32

        mov w0, 0
        ret
