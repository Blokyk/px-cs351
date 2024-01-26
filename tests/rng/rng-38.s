# Seed: 1150812338

# Generation 85

# == filling regs ==
addi   t2, x0, 0x1d0
addi   ra, x0, 0x447
addi   t6, x0, 0x13
addi   s3, x0, 0x786
addi   s6, x0, 0x30

# == code ==
xori   t2, s11, 0x7e7
sra    a7, a4, a2
addi   a7, a2, 0x7ad
xor    s2, t1, x0
lw     s9, 45(t1)
ori    s7, s7, 0x7e0
sw     s11, 1954(s0)
addi   a0, t0, 0x18
beq    ra, s10, 0x2c
sll    s1, x0, t5
sw     s9, 2044(a1)
xor    a0, s7, s2
sltu   s9, gp, sp
add    a1, s9, a7
sra    s5, t6, a3
sll    s3, t6, a7
lhu    a2, 76(s7)
sb     s5, 46(a6)
ld     a1, 2025(a1)
sb     s6, 1989(t0)
or     t3, t6, a1
and    a1, sp, ra
bltu   a1, a2, 0x58
lw     t1, 208(a1)
lhu    s1, 2045(t4)
sb     s2, 68(t0)
sub    a4, t2, a4
slti   s10, s10, 0x89
sll    t4, t2, t1
add    a1, s2, s11

# EXPECTED
# x1: 0x447
# x2: 0x4000
# x7: 0x7e7
# x9: 0x7bb4
# x10: 0x7e0
# x14: 0x7e7
# x17: 0x7ad
# x19: 0x26000
# x21: 0x13
# x22: 0x30
# x23: 0x7e0
# x25: 0x1
# x26: 0x1
# x28: 0x13
# x29: 0x7e7
# x31: 0x13
