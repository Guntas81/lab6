.global multiply_add
.text

multiply_add:
    # 1. Copy 'b' (from %rsi) into the return register (%rax)
    movq %rsi, %rax

    # 2. Multiply %rax (holds 'b') by 'c' (%rdx) -> %rax now holds (b * c)
    imulq %rdx, %rax

    # 3. Add 'a' (%rdi) to %rax -> %rax now holds (a + b * c)
    addq %rdi, %rax

    # 4. Return to the caller
    ret
