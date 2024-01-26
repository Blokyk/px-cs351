# Seed: 1044861696

# Generation 174

# == filling regs ==
addi   sp, x0, 0x7e3
addi   a1, x0, 0x7a0
addi   s1, x0, 0x5dd
addi   s3, x0, 0x489
addi   s4, x0, 0x7fe

# == code ==
bne    s10, t4, -0x18 # (0xffffffe8)
add    t5, s2, s1
bltu   s8, ra, 0x40
sltu   t5, x0, s10
srl    a0, t5, a1
slti   s4, t4, 0x6b2
blt    t4, s7, 0x354
andi   t4, s4, 0x7e8
sub    s2, t3, t2
or     s1, tp, a0
lui    a4, 0x55
addi   a7, ra, 0x7e3
sra    s2, s2, s6
srli   t1, s0, 0x1
andi   x0, sp, 0x7e2
or     t3, s10, gp
ori    a7, t1, 0x4ad
lui    a3, 0x46
slt    a6, t0, t0
xor    t2, a2, gp
lwu    t6, 969(t5)
sw     x0, 1983(s3)
and    s7, ra, a3
xor    s8, a5, sp
ori    s7, s6, 0x7f2
andi   t1, s0, 0x7f8
sw     t6, 1975(a6)
auipc  t2, 0x53
ori    a5, t4, 0x7fc
add    sp, x0, t3

# EXPECTED
# x7: 0x53080
# x11: 0x7a0
# x13: 0x46000
# x14: 0x55000
# x15: 0x7fc
# x17: 0x4ad
# x19: 0x489
# x20: 0x1
# x23: 0x7f2
# x24: 0x7e3
