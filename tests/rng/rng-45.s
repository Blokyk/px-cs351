# Seed: 1705440694

# Generation 3

# == filling regs ==
addi   tp, x0, 0x79d
addi   tp, x0, 0x61
addi   a1, x0, 0x784
addi   a7, x0, 0x295
addi   a4, x0, 0x58

# == code ==
lh     ra, 1958(a2)
or     ra, s0, t0
xori   s8, t6, 0x50
auipc  s4, 0x15
xor    s1, t1, s6
slt    s8, a5, t5
bgeu   gp, a3, 0x8
ori    gp, a7, 0x7ce
srai   t6, t2, 0x5
sw     s10, 2032(a0)
bltu   a5, s5, 0x0
ld     s9, 1873(s1)
srl    ra, gp, s5
srli   s8, s0, 0x1b
addi   s0, a4, 0x7a8
srai   t1, a2, 0x1
and    t1, s2, s11
lwu    s0, 1876(s7)
slti   s0, s7, 0x7b5
andi   a2, s2, 0x187
and    s1, x0, s5
xor    a1, t1, s5
sd     s8, 1952(t4)
sltiu  s9, s3, 0x31
lwu    s5, 1890(ra)
blt    gp, s10, -0x670 # (0xfffff990)
sltu   t3, ra, sp
bltu   s10, s6, 0x28
sltiu  s8, a7, 0x1c
slt    t4, s1, a3

# EXPECTED
# x2: 0x4000
# x4: 0x61
# x8: 0x1
# x14: 0x58
# x17: 0x295
# x20: 0x15020
# x25: 0x1
# x28: 0x1
