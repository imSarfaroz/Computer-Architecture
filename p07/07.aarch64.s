.section .rodata

message:
        .string "hello, world"

.section .text

# int main(void) {...
.global main
main:
        stp x29, x30, [sp, -32]!
        mov x29, sp

        # puts("hello, words");
        adr x0, message
        bl puts

        ldp x29, x30, [sp], 32

        #return 0
        mov w0, 0
        ret
