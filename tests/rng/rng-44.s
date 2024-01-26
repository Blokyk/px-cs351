# Seed: 490705448

# Generation 77

# == filling regs ==
addi   gp, x0, 0x7a8
addi   a2, x0, 0x36
addi   sp, x0, 0x40
addi   t4, x0, 0x0
addi   tp, x0, 0x14

# == code ==
lui    s5, 0xffff4
xori   a0, t2, 0x38
lb     a4, 14(s4)
sub    s10, t1, t6
or     a7, s10, s7
auipc  s2, 0x1a
sra    s0, t4, x0
sra    t2, t1, t1
slti   a7, a6, 0x2ee
lui    s11, 0xffff7
srai   s2, a2, 0x2
slti   t3, gp, 0x1
addi   s9, s5, 0x1c
sra    a1, a6, a1
xori   s3, t0, 0x242
or     t1, a0, t6
sltiu  s3, t5, 0x7fc
srli   a1, a3, 0x6
xori   a1, t6, 0x7c7
andi   tp, s4, 0x35f
xori   x0, t4, 0x145
ld     sp, 75(t0)
sll    t6, s10, s0
lwu    x0, 1946(a5)
xor    s8, t1, t2
andi   s7, s10, 0x7b8
sd     a4, 1991(s8)
sub    t3, s11, s5
slti   a4, s5, 0xd
slti   s9, a0, 0x7ee

# EXPECTED
# x2: -0xa9cccdbdd366cc0
# x3: 0x7a8
# x6: 0x38
# x10: 0x38
# x11: 0x7c7
# x12: 0x36
# x14: 0x1
# x17: 0x1
# x18: 0xd
# x19: 0x1
# x21: -0xc000
# x24: 0x38
# x25: 0x1
# x27: -0x9000
# x28: 0x3000
