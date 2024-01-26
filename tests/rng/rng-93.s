# Seed: 251375694

# Generation 32

# == filling regs ==
addi   s11, x0, 0x7ac
addi   t6, x0, 0x35b
addi   tp, x0, 0x7db
addi   t2, x0, 0x40a
addi   t0, x0, 0x44

# == code ==
lb     s11, 2046(a7)
andi   s1, s5, 0x7ba
andi   s10, a4, 0x1f
lh     s1, 1113(ra)
sw     t0, 1949(gp)
sb     sp, 2025(s9)
srai   gp, a4, 0xa
lhu    a0, 2021(tp)
srai   a5, t5, 0x18
andi   a5, s8, 0x7d9
bltu   sp, t0, 0x5c
blt    s8, a6, -0x50 # (0xffffffb0)
ori    a2, s6, 0x7f5
sb     a5, 46(s4)
auipc  s1, 0xfffc7
addi   ra, s9, 0x696
srl    s8, t2, s6
sub    s8, a1, t0
srli   x0, sp, 0x0
xori   a7, t2, 0x4eb
sub    s3, a1, t3
addi   s2, a0, 0x7d2
addi   s11, tp, 0x5c
xori   s1, a1, 0x7dc
ld     a3, 1160(t2)
add    s0, t4, s7
ori    s5, a6, 0x13e
addi   t0, s6, 0x75a
add    a7, s5, s8
bgeu   s11, a4, 0x30

# EXPECTED
# x1: 0x696
# x2: 0x4000
# x4: 0x7db
# x5: 0x75a
# x7: 0x40a
# x9: 0x7dc
# x12: 0x7f5
# x17: 0xfa
# x18: 0x7d2
# x21: 0x13e
# x24: -0x44
# x27: 0x837
# x31: 0x35b
