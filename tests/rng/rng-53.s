# Seed: 847187836

# Generation 252

# == filling regs ==
addi   s2, x0, 0x5b2
addi   tp, x0, 0x3c
addi   t6, x0, 0x467
addi   t4, x0, 0x7cf
addi   tp, x0, 0xa

# == code ==
sll    a5, t5, t2
lh     s10, 2012(a6)
lwu    a5, 48(a2)
sltu   t2, s4, a2
bltu   s2, t5, -0x28 # (0xffffffd8)
sd     s1, 862(a0)
ld     t3, 3(s1)
lbu    x0, 1(a0)
lw     s5, 2037(s11)
slti   t6, tp, 0x72
slti   s3, a1, 0x77d
sub    s2, a1, t2
xor    s4, s4, t0
srli   s4, a3, 0x10
xor    s5, s1, t4
slli   a2, a2, 0x16
addi   a7, s6, 0x6cd
xori   a1, t6, 0x480
lh     s3, 2016(t4)
slti   gp, t0, 0xd8
slli   s11, a2, 0x9
andi   t5, t0, 0x6b9
addi   s8, t1, 0x1e
xori   s7, a4, 0x7b7
slli   s1, s6, 0x15
addi   ra, s4, 0x2c
auipc  s8, 0xfff9d
add    a1, t6, s2
and    a1, s1, a7
srli   t6, ra, 0x1c

# EXPECTED
# x1: 0x2c
# x2: 0x4000
# x3: 0x1
# x4: 0xa
# x15: 0x154003
# x17: 0x6cd
# x21: 0x7cf
# x23: 0x7b7
# x24: -0x62f84
# x28: 0x700f9303c002135b
# x29: 0x7cf
