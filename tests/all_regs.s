add x0, x1, x2
add x3, x4, x5
add x6, x7, x8
add x9, x10, x11
add x12, x13, x14
add x15, x16, x17
add x18, x19, x20
add x21, x22, x23
add x24, x25, x26
add x27, x28, x29
add x30, x31, x0

add x0, zero, ra
add sp, gp, tp

add t0, t1, t2
add t3, t4, t5
add t6, x0, x0

add s0, s1, s2
add s3, s4, s5
add s6, s7, s8
add s9, s10, s11

add a0, a1, a2
add a3, a4, a5
add a6, a7, x0

ld ra, -0x7ff(zero)
sd gp, 0(sp)

beq x1, zero, 0
bne s9, t1, -4

jal ra, -4

li tp, -0x1ff

mv ra, x1

# checks invalid regs
# this has to be tested manually, because the test harness doesn't support invalid code
#
# add one, x0, x0
# add x32, x0, x0
# add x-1, x0, x0
# add x0x2, x0, x0
# add a12, x0, x0
# add t7, x0, x0
# add g0, x0, x0
# add s12, x0, x0
