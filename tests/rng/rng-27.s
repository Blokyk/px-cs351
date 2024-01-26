# Seed: 1241409741

# Generation 137

# == filling regs ==
addi   a3, x0, 0x53
addi   s8, x0, 0x5f
addi   t3, x0, 0x7e0
addi   t2, x0, 0x7f3
addi   tp, x0, 0x7f6

# == code ==
slti   s8, s5, 0x25
sltiu  s3, t5, 0x2de
bltu   s1, a7, -0x2c # (0xffffffd4)
lbu    t6, 1986(s5)
bltu   t3, t5, 0x4
srli   sp, s5, 0x1b
slt    s7, a7, t4
xori   s4, tp, 0x47
srl    s7, s7, tp
sb     s6, 35(s2)
slt    a7, t5, a4
sltiu  t6, s3, 0x671
srli   gp, s0, 0x1
srli   s3, a0, 0xa
sll    a0, a5, t1
sd     s6, 222(s11)
lui    s2, 0x97096
blt    s7, a4, 0x28
or     x0, sp, a1
sra    a4, s3, t4
srli   t3, s4, 0x8
and    t5, a2, s3
sh     s5, 2036(s9)
lhu    gp, 2025(sp)
blt    ra, sp, 0x50
sltiu  s8, t0, 0x5
srli   s5, s1, 0x19
srai   a5, a0, 0x6
bgeu   a2, s6, 0x54
srai   a5, s3, 0xf

# EXPECTED
# x4: 0x7f6
# x7: 0x7f3
# x13: 0x53
# x18: -0x68f6a000
# x20: 0x7b1
# x24: 0x1
# x28: 0x7
# x31: 0x1
