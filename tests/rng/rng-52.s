# Seed: 2111814141

# Generation 164

# == filling regs ==
addi   a5, x0, 0x7da
addi   s10, x0, 0x7de
addi   t5, x0, 0x7dc
addi   s9, x0, 0x0
addi   t3, x0, 0x7c9

# == code ==
sb     t5, 2010(a3)
srli   a6, a4, 0x14
xori   t0, a7, 0x3
lbu    a5, 25(a5)
xori   gp, a6, 0x37
slti   s1, tp, 0x2
addi   t2, s2, 0x9
sll    t6, s11, s0
slti   tp, t5, 0x60
bgeu   s5, s10, -0x48 # (0xffffffb8)
slli   s7, a7, 0x18
or     s5, t0, a5
slli   a4, s4, 0x17
sub    t1, t0, a5
sra    a6, a0, a3
sh     s9, 2023(s8)
sltiu  s9, sp, 0x5e
xor    s8, s5, t2
xor    sp, tp, t2
add    s2, sp, s2
ori    a4, t6, 0x7c5
sub    t1, a1, s6
lhu    t6, 2003(t4)
andi   gp, s0, 0x3e
lwu    ra, 12(s5)
sll    s9, s1, sp
xori   a6, x0, 0x198
slli   sp, a0, 0x1e
sw     s11, 2046(t0)
add    a6, tp, s5

# EXPECTED
# x1: 0x900e1300
# x5: 0x3
# x7: 0x9
# x9: 0x1
# x14: 0x7c5
# x16: 0x3
# x18: 0x9
# x21: 0x3
# x24: 0xa
# x25: 0x200
# x26: 0x7de
# x28: 0x7c9
# x30: 0x7dc
