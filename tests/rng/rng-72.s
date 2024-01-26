# Seed: 1618188183

# Generation 341

# == filling regs ==
addi   t3, x0, 0x60
addi   a3, x0, 0x62e
addi   s6, x0, 0x91
addi   s0, x0, 0x7d1
addi   s10, x0, 0x7b8

# == code ==
slli   a6, sp, 0xc
ld     s7, 192(a1)
add    t1, t4, gp
sra    tp, a5, s5
sub    s7, a6, a3
ori    s8, t3, 0x7a7
auipc  s11, 0xffff0
slt    t4, a2, a7
xori   s8, t5, 0x7a6
lhu    ra, 2029(t1)
srli   a7, t6, 0x1e
slti   a1, a7, 0x7e4
sra    t1, t0, t5
lhu    s11, 235(gp)
or     s9, ra, gp
or     t6, s10, a2
srli   a0, s1, 0x3
and    t2, s2, t4
sltiu  t2, s4, 0x2b
auipc  t4, 0x8
sll    a6, sp, a1
sltiu  t4, s2, 0x7a2
or     t5, x0, s4
sltiu  a3, s5, 0x7c0
and    a6, x0, s4
or     s9, a7, ra
sd     gp, 70(s11)
bge    s0, a2, -0x58 # (0xffffffa8)
srli   a6, s6, 0x17
bltu   a1, s7, -0x564 # (0xfffffa9c)

# EXPECTED
# x2: 0x4000
# x7: 0x1
# x8: 0x7d1
# x11: 0x1
# x13: 0x1
# x22: 0x91
# x23: 0x3fff9d2
# x24: 0x7a6
# x26: 0x7b8
# x27: -0xffd4
# x28: 0x60
# x31: 0x7b8
