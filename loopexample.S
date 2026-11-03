section .text
    global _start

_start:

    mov $5, %rcx

loop_start:

    dec %rcx
    jnz loop_start

    mov $0, %rax
    ret