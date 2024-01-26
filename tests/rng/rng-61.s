# Seed: 1696830322

# Generation 738

# == filling regs ==
addi   t3, x0, 0x7
addi   s9, x0, 0x7a5
addi   s1, x0, 0x47
addi   s7, x0, 0x277
addi   x0, x0, 0xd7

# == code ==
lui    x0, 0x28
blt    s4, t1, -0x54 # (0xffffffac)
and    a7, s3, a3
andi   s0, s9, 0x7f4
ori    s6, a7, 0x4b
lh     ra, 76(s11)
sll    sp, a5, a0
lui    tp, 0x3b
and    s6, s3, s10
sltiu  sp, a2, 0x3f7
and    gp, a7, s7
slti   sp, t2, 0x7b7
slli   s7, s1, 0x1d
slli   t6, a2, 0x1b
sltiu  s1, a2, 0x4c
slt    t4, s9, s1
sra    t6, s2, gp
srl    t0, a0, gp
ori    s10, s4, 0x23
sw     s8, 1977(s3)
ori    a6, s6, 0x7df
lw     s3, 75(ra)
ld     t6, 65(s0)
ori    a5, ra, 0x44
or     s7, s11, s8
and    s5, s4, t2
blt    gp, a4, 0xc
and    t4, sp, s9
lb     t2, 1968(s5)
or     s0, sp, t5

# EXPECTED
# x1: 0x3493
# x2: 0x1
# x4: 0x3b000
# x8: 0x1
# x9: 0x1
# x15: 0x34d7
# x16: 0x7df
# x25: 0x7a5
# x26: 0x23
# x28: 0x7
# x29: 0x1
