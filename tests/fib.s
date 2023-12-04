#
# n_th_fibonacci_number.rvi
#
# Find the Nth fibonacci number.
# x5 holds N, and result is written in x3

# _START:
    addi a0, zero, 6 # N = 6
    jal x1, 4

# fib(a0:dw = n) -> a0:dw
    # Setup a0, a1, result and i
    addi x1, zero, 1
    addi x2, zero, 0x0
    addi x3, zero, 0 # todo: 0b00000
    addi x4, zero, 1
    # FOR:
        add x3, x1, x2
        add x2, x0, x1
        add x1, x0, x3
        addi x4, x4, 1
        blt x4, x5, -16
    # HALT:
        # jal x0, 0
