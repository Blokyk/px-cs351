# Seed: 1977092281

# Generation 26

# == filling regs ==
addi   a4, x0, 0x7ec
addi   s8, x0, 0x49
addi   s10, x0, 0x414
addi   s1, x0, 0x7e6
addi   a3, x0, 0x7c7

# == code ==
sltiu  t4, s0, 0x5df
sra    t1, t4, s2
xor    t1, tp, t6
srli   t0, t0, 0x18
sd     s1, 1994(s5)
ld     t4, 1980(a7)
lhu    s3, 755(ra)
sll    t4, tp, a3
add    t0, a1, a2
ori    t5, s11, 0x248
sh     s5, 1990(x0)
slt    s5, s3, s2
sll    t1, a5, s2
sd     t2, 38(t0)
xor    t1, s9, t2
sra    s6, s9, t4
xor    sp, a5, s5
sltiu  s10, a0, 0x588
xor    t1, a1, t1
andi   a1, s11, 0x7fa
ori    s0, t4, 0x12c
srl    a3, gp, t6
andi   a5, t1, 0x7e8
sll    x0, s8, a7
slli   s7, s7, 0x4
bltu   s3, a7, 0x0
and    t6, s9, s0
or     t6, ra, s11
sd     s10, 76(t2)
xori   s2, tp, 0x145

# EXPECTED
# x8: 0x12c
# x9: 0x7e6
# x14: 0x7ec
# x18: 0x145
# x24: 0x49
# x26: 0x1
# x30: 0x248
