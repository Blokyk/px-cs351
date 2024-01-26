# Seed: 221640899

# Generation 30

# == filling regs ==
addi   s6, x0, 0x3e
addi   t1, x0, 0x21
addi   s4, x0, 0x15
addi   s0, x0, 0x7d1
addi   t3, x0, 0x23

# == code ==
srl    a3, s5, s3
lh     s5, 2040(tp)
slti   t4, ra, 0x5f
slt    s0, s7, gp
xori   a3, s8, 0x0
addi   t5, t4, 0x2
srai   a0, tp, 0x1e
sltu   s8, a6, s2
or     a2, s6, a7
add    s3, t2, a1
addi   gp, t5, 0x344
and    t4, s6, tp
lw     t6, 18(s3)
addi   a3, tp, 0x1a
xori   a3, s0, 0x7ab
srl    a3, sp, s0
xori   s5, a3, 0x492
lbu    s10, 64(a1)
andi   s10, s3, 0x8b
sltiu  s1, a1, 0x219
bne    t4, ra, 0x48
sh     t6, 1969(t3)
sll    s9, s3, a7
xori   a4, a7, 0x7ed
and    a2, a4, s7
lbu    ra, 1421(t1)
sd     a3, 1951(t2)
xor    a4, t2, a5
sb     t1, 37(a7)
sltiu  s2, s8, 0x17

# EXPECTED
# x2: 0x4000
# x3: 0x347
# x6: 0x21
# x9: 0x1
# x13: 0x4000
# x18: 0x1
# x20: 0x15
# x21: 0x4492
# x22: 0x3e
# x28: 0x23
# x30: 0x3
# x31: -0x294cfdd0
