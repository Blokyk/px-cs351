# Seed: 717720647

# Generation 148

# == filling regs ==
addi   t4, x0, 0xd7
addi   ra, x0, 0x17
addi   t1, x0, 0x7f6
addi   x0, x0, 0x137
addi   s8, x0, 0x0

# == code ==
srli   s0, a5, 0x19
xori   a0, s2, 0x3d
lhu    t1, 1954(a0)
sltu   s0, a4, t0
or     a2, t4, a7
xori   a3, a6, 0xa
sltiu  a2, t6, 0x7df
xor    x0, a1, a2
sub    a0, a5, s9
or     ra, a4, s2
ori    t0, t4, 0xa
slti   a1, s4, 0x44a
bne    s11, t5, 0x34
sll    s10, a0, t4
sb     sp, 99(s9)
sb     t1, 870(a1)
addi   s8, a5, 0x7e1
slti   a6, s0, 0x3c
auipc  s8, 0x32
sb     a4, 2023(a1)
srli   gp, s11, 0x0
xori   s0, a3, 0x7a8
andi   s2, s4, 0x2e
srai   t0, t6, 0x13
lb     ra, 2010(a5)
sltu   s3, a1, s7
sub    t5, t5, a5
xori   s3, a6, 0x573
srl    s8, t3, a6
add    a0, a2, s5

# EXPECTED
# x2: 0x4000
# x8: 0x7a2
# x10: 0x1
# x11: 0x1
# x12: 0x1
# x13: 0xa
# x16: 0x1
# x19: 0x572
# x29: 0xd7
