# Seed: 1826040058

# Generation 124

# == filling regs ==
addi   s5, x0, 0x2c
addi   s1, x0, 0x7e6
addi   a2, x0, 0x7e3
addi   a2, x0, 0x7e7
addi   gp, x0, 0x7aa

# == code ==
or     a7, s10, s2
sh     t6, 1981(a0)
srl    a7, t1, s7
or     s3, s8, s9
add    a3, a0, ra
sra    s7, s6, sp
slt    s1, s11, t3
lwu    a7, 1980(a0)
bltu   tp, s6, 0x30
add    t3, gp, a4
ld     a2, 1991(s0)
addi   a5, s8, 0x20
sll    s0, s1, t3
slti   s6, t1, 0x789
srl    x0, s1, s1
bne    a2, t1, -0x874 # (0xfffff78c)
srai   s6, t2, 0x18
blt    s9, s9, -0x5c # (0xffffffa4)
sub    s6, sp, s1
lwu    ra, 49(s1)
ld     t4, 2018(t5)
ld     s9, 680(s3)
or     s10, t3, t1
sb     sp, 52(t3)
lw     a2, 5(t6)
lui    ra, 0xffff0
srli   a3, a0, 0x9
slt    sp, t1, a3
blt    a3, s5, 0x2c
sra    t3, t0, a6

# EXPECTED
# x1: -0x10000
# x3: 0x7aa
# x12: 0x137e6004
# x15: 0x20
# x21: 0x2c
# x22: 0x4000
# x26: 0x7aa
# x28: 0x7aa
