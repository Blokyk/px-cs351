# Seed: 648147024

# Generation 276

# == filling regs ==
addi   s4, x0, 0x7a9
addi   s4, x0, 0x7a3
addi   s8, x0, 0x46
addi   t1, x0, 0x18
addi   a7, x0, 0x688

# == code ==
bne    s9, s1, 0x0
jal    ra, 0x34
sra    s10, a5, s5
slti   a2, s1, 0x2d3
slli   t3, s4, 0x11
auipc  a0, 0x5b
sltiu  s11, s4, 0x632
xori   s2, tp, 0x13
addi   s2, s5, 0x232
srli   sp, t1, 0x0
ld     t1, 1973(a6)
sra    s5, s3, s7
srai   t4, s8, 0x18
sltu   t2, x0, t3
sltiu  x0, s10, 0x7f
add    s4, t5, t0
slli   s11, s9, 0x13
sh     s5, 0(a5)
sub    sp, s0, t1
ld     x0, 1571(a1)
sd     ra, 46(sp)
slti   s0, s6, 0x4c
sb     a0, 567(t4)
beq    t4, a1, -0x4c # (0xffffffb4)
or     s6, s10, s6
auipc  s3, 0x49
sb     s11, 2046(a4)
bgeu   s7, t5, 0x5cc
andi   x0, gp, 0x7fd
ld     a3, 1999(s2)

# EXPECTED
# x1: 0x1c
# x2: 0x1
# x8: 0x1
# x10: 0x5b028
# x17: 0x688
# x18: 0x232
# x24: 0x46
# x27: 0x1
