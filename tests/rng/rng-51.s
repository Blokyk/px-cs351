# Seed: 1070704285

# Generation 70

# == filling regs ==
addi   s0, x0, 0x79e
addi   s7, x0, 0x585
addi   s0, x0, 0x7de
addi   a7, x0, 0x48
addi   sp, x0, 0x7a3

# == code ==
lbu    s1, 1951(a6)
sltu   s4, s11, s10
srli   s3, s8, 0xc
lb     t0, 1030(t5)
or     t3, s10, gp
sw     s2, 2038(t1)
ori    sp, s4, 0x7af
xori   t5, t1, 0x1c
sltiu  t1, sp, 0x1b
lhu    s7, 682(gp)
srl    s8, t6, t1
bgeu   a6, gp, 0x4
srai   s3, s6, 0x6
sub    s11, x0, s1
lui    a6, 0xffff5
lui    t5, 0xfffd3
srli   a7, x0, 0xc
lh     ra, 81(s4)
lh     s9, 1977(t3)
srli   s7, x0, 0x1c
xori   t0, s1, 0x7c1
and    s7, t3, s4
ld     t3, 26(s2)
srli   a5, s6, 0xc
sll    t1, t1, ra
lhu    a0, 72(t6)
beq    s8, t5, 0x7b0
sd     t0, 1966(s2)
sh     t0, 20(gp)
sb     s7, 1567(s8)

# EXPECTED
# x1: -0x2c1
# x2: 0x7af
# x5: 0x7c1
# x8: 0x7de
# x10: 0xdb3
# x16: -0xb000
# x28: 0x28300cc599301ad
# x30: -0x2d000
