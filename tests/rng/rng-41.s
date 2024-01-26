# Seed: 2091839343

# Generation 131

# == filling regs ==
addi   s4, x0, 0x695
addi   s4, x0, 0x30
addi   s10, x0, 0x37
addi   s3, x0, 0x52
addi   s3, x0, 0xfe

# == code ==
sll    t0, a2, s1
bne    tp, s6, -0x214 # (0xfffffdec)
andi   s9, ra, 0x20
andi   s7, s1, 0x306
add    s2, t1, s0
add    a3, a0, a3
andi   t1, s8, 0x20
or     a6, s2, s9
xor    a3, s7, a1
addi   a7, x0, 0x508
sra    a6, a4, s7
xori   tp, t2, 0x1
sw     s5, 1986(t6)
slt    s5, s10, s1
sb     a0, 27(t3)
slli   a1, s9, 0x1e
sub    sp, s0, t6
lw     s7, 1920(s9)
srli   s7, sp, 0x1b
slti   a2, a4, 0x7f4
lw     t0, 1996(x0)
sll    a2, s11, s4
slli   t1, s11, 0x3
lw     s0, 55(tp)
ori    s10, s1, 0x7f2
andi   t0, t3, 0x7d2
sd     s7, 9(a6)
sltiu  t3, a1, 0x3
lhu    ra, 55(x0)
lhu    t5, 1949(t0)

# EXPECTED
# x1: 0x9300
# x4: 0x1
# x8: 0x50800893
# x17: 0x508
# x19: 0xfe
# x20: 0x30
# x26: 0x7f2
# x28: 0x1
