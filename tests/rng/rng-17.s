# Seed: 332030480

# Generation 420

# == filling regs ==
addi   a7, x0, 0x48
addi   tp, x0, 0x7e8
addi   s10, x0, 0x3cf
addi   a0, x0, 0x264
addi   s0, x0, 0x7de

# == code ==
add    a1, a1, t3
ori    gp, s3, 0x7be
or     tp, a2, t5
slli   t5, a2, 0x11
and    ra, s0, t0
and    a6, s5, a4
sd     s10, 12(s10)
sltu   a6, a4, t0
lhu    sp, 1(a0)
srl    s3, s4, a3
and    s7, s11, a4
addi   a5, a2, 0xb
lb     t6, 19(s10)
add    a1, t2, t1
bltu   a2, a6, 0x4
sltu   s6, t0, s3
andi   sp, a0, 0x7dd
srai   a7, ra, 0x5
addi   s3, a5, 0x7b7
srl    x0, s4, a1
andi   s10, a1, 0x7e4
sra    s1, t0, t3
sw     s10, 23(sp)
sw     a7, 1986(x0)
sll    x0, s5, s5
addi   a6, s7, 0x7af
add    a1, s6, s10
andi   t5, s4, 0x5e
ori    s6, a2, 0x5d
add    sp, x0, s3

# EXPECTED
# x2: 0x7c2
# x3: 0x7be
# x8: 0x7de
# x10: 0x264
# x15: 0xb
# x16: 0x7af
# x19: 0x7c2
# x22: 0x5d
