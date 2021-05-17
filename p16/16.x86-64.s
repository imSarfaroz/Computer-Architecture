.section .text
.global main

main:
        pushq $system
        mov 8(%rsi), %rdi

        ret
