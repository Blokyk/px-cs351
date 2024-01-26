# Seed: 873543724

# Generation 172

# == filling regs ==
addi   s4, x0, 0x45b
addi   x0, x0, 0x1dc
addi   a0, x0, 0x1f
addi   a5, x0, 0x7c7
addi   t6, x0, 0x48

# == code ==
sll    t6, t5, s11
andi   s3, t6, 0x7f7
bne    s0, a6, 0x5c
ori    ra, s10, 0x7a7
slti   t2, a6, 0x1cb
or     a6, s7, s7
or     a1, a1, a1
srl    a1, t6, ra
lbu    s6, 1954(a4)
sll    t0, t4, a6
sra    a4, s3, a5
lui    ra, 0xe4c22
sll    a7, a0, s5
sltiu  a7, a1, 0x7c3
beq    ra, s10, 0xbe4
lhu    a6, 795(s10)
bltu   a4, t4, 0xbf4
srli   t2, s0, 0x6
srli   t0, s10, 0x10
or     s11, a7, t1
ori    s7, s8, 0x7c6
sltu   gp, s10, s8
ori    s2, t6, 0x52
sltiu  a4, sp, 0x7fe
srli   t2, s5, 0x0
andi   gp, t0, 0x1f
srli   a1, sp, 0x9
slt    t5, a1, s1
ori    t2, s2, 0x7c9
lb     t1, 47(a4)

# EXPECTED
# x1: -0x1b3de000
# x2: 0x4000
# x7: 0x7db
# x10: 0x1f
# x11: 0x20
# x15: 0x7c7
# x17: 0x1
# x18: 0x52
# x20: 0x45b
# x23: 0x7c6
# x27: 0x1
