# Find the Nth fibonacci number.

# _START:
    addi a0, zero, 6 # N = 6
    jal x1, 4

# fib(a0:dw = n) -> a0:dw
    # Setup a0, a1, result and i
    addi t0, zero, 1   # fib(n-1)
    addi t1, zero, 0x0 # fib(n-2)
    addi t2, zero, 0b000000 # res
    addi t3, zero, 1   # i
    # FOR:
        add t2, t0, t1
        add t1, x0, t0
        add t0, x0, t2
        addi t3, t3, 1
        blt t3, a0, -16
    addi a0, t2, 0
    # ret ???
    # HALT:
        # jal x0,  0

# EXPECTED
# sp: 0x4000
# ra: 8
# a0: 8
# t0: -
# t1: -
# t2: 8
# t3: 6