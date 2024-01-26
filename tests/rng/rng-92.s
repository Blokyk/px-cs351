# Seed: 1568508174

# Generation 126

# == filling regs ==
addi   t6, x0, 0x7f2
addi   ra, x0, 0x7cb
addi   s7, x0, 0x139
addi   s2, x0, 0x1f
addi   s1, x0, 0x7df

# == code ==
xor    t3, s1, gp
blt    s10, s10, 0xc
and    sp, a1, a5
blt    s0, t2, -0xf98 # (0xfffff068)
srai   a1, s11, 0x2
auipc  s10, 0x58
sll    s0, a3, s7
andi   s6, s2, 0x66b
ori    gp, a1, 0x401
bgeu   sp, t6, -0x24 # (0xffffffdc)
addi   s5, s1, 0x38e
or     sp, s1, s2
ld     s0, 2024(t5)
srai   a5, s4, 0x13
srli   gp, x0, 0x8
xori   t1, s5, 0x2b
slti   t0, s0, 0x7f7
sll    t5, t2, t6
sb     a7, 1735(ra)
slti   a5, sp, 0x196
sub    s2, t5, t2
sb     ra, 161(t1)
slt    t3, s7, tp
ori    s6, s3, 0x7bd
or     s1, t0, s7
sltu   s9, t3, s11
srl    x0, t6, s0
andi   s3, s6, 0x4
xor    a1, s7, gp
xor    s3, a6, a7

# EXPECTED
# x1: 0x7cb
# x2: 0x7df
# x5: 0x1
# x6: 0xb46
# x9: 0x139
# x11: 0x139
# x21: 0xb6d
# x22: 0x7bd
# x23: 0x139
# x26: 0x58028
# x31: 0x7f2
