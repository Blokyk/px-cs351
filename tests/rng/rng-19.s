# Seed: 1263616117

# Generation 306

# == filling regs ==
addi   s1, x0, 0x3aa
addi   gp, x0, 0x47
addi   s6, x0, 0x7de
addi   tp, x0, 0x290
addi   s3, x0, 0x3

# == code ==
and    t2, a0, s7
xori   t6, s7, 0x7f7
srli   s1, x0, 0x5
xor    a5, ra, a3
slt    a2, ra, s11
sll    ra, s11, a1
sltiu  s7, x0, 0x63
slti   s9, t5, 0x10
sltiu  gp, a3, 0x7e4
srl    t2, t5, s11
lb     ra, 1977(a5)
srli   t2, a6, 0x9
slt    a0, t5, t0
ori    s3, s7, 0x7e1
xor    a0, tp, s3
sra    s6, t2, s1
addi   ra, t2, 0x7c4
lui    ra, 0xb0e4f
xori   s6, a3, 0x10b
slti   a4, s1, 0x156
andi   sp, ra, 0x7ec
lhu    a3, 28(tp)
sra    x0, s11, s10
slti   s9, a7, 0x7b4
sd     gp, 2047(s4)
srai   s0, s7, 0x14
sb     s5, 23(s3)
sh     sp, 2027(t2)
xor    a5, a1, s0
addi   a0, a3, 0x7b5

# EXPECTED
# x1: -0x4f1b1000
# x3: 0x1
# x4: 0x290
# x10: 0x7b5
# x14: 0x1
# x19: 0x7e1
# x22: 0x10b
# x23: 0x1
# x25: 0x1
# x31: 0x7f7
