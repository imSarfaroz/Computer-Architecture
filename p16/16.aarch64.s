.section .text

.global main
main:
        adr lr, system
        ldr x0, [x1, 8]

        ret
