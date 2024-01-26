# Seed: 1080557039

# Generation 353

# == filling regs ==
addi   a6, x0, 0x5a
addi   t5, x0, 0x55e
addi   s6, x0, 0x57
addi   gp, x0, 0x7ee
addi   a6, x0, 0x7bf

# == code ==
sb     a2, 17(t0)
lui    x0, 0x5fff9
beq    s6, s2, 0x24
add    s4, t2, s5
sltiu  x0, t2, 0x7ce
sd     gp, 980(a2)
add    a1, s6, a4
lb     a1, 2011(s2)
xori   s3, a4, 0x7b8
lui    s10, 0xfffda
srai   s4, s3, 0x7
add    s6, t5, s8
sll    tp, t4, t1
lh     t3, 92(s5)
sltu   sp, s5, a6
or     t1, sp, tp
srl    t4, t2, t0
sra    s5, a5, t4
srli   a5, s8, 0x6
ori    s10, a2, 0x7fd
srli   s10, s11, 0x1f
xor    x0, t6, a4
sub    t6, s6, a4
ori    s2, t4, 0x7a3
lui    a0, 0x12
beq    s8, s6, 0x4
sw     a1, 2006(s4)
srli   s9, tp, 0x15
srl    gp, t4, t2
jal    t3, 0x50

# EXPECTED
# x2: 0x1
# x6: 0x1
# x10: 0x12000
# x16: 0x7bf
# x18: 0x7a3
# x19: 0x7b8
# x20: 0xf
# x22: 0x55e
# x28: 0x8c
# x30: 0x55e
# x31: 0x55e
