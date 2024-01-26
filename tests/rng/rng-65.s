# Seed: 29818497

# Generation 77

# == filling regs ==
addi   s5, x0, 0xd
addi   a1, x0, 0x11
addi   s7, x0, 0x634
addi   a5, x0, 0x61
addi   x0, x0, 0x5a

# == code ==
sh     s7, 14(t4)
xori   s11, s8, 0x7c2
or     t0, a0, s6
sh     s3, 2002(s5)
sra    s7, ra, a2
andi   a3, a6, 0x401
ori    t2, t3, 0x3a7
addi   s10, s11, 0x7ee
lw     s8, 1976(s4)
ld     a5, 2027(a6)
sltiu  x0, a2, 0x7d5
sd     t0, 1984(t3)
xor    s5, a5, s6
bne    s5, t0, -0x18 # (0xffffffe8)
sra    a2, s5, s11
sll    t6, s4, a6
bne    a5, a6, 0x60
blt    a1, a6, -0x5c # (0xffffffa4)
blt    s2, a2, 0x2f4
srli   a4, s5, 0x3
sltu   t2, t6, s6
sh     t0, 1978(t6)
srai   s8, t2, 0x13
ori    s5, t3, 0xc
add    a5, s0, s10
sh     s0, 2026(t4)
sltiu  s8, s5, 0x5
srl    t1, t0, s11
ori    s4, s2, 0x13
addi   t0, a1, 0x7a1

# EXPECTED
# x2: 0x4000
# x5: 0x7b2
# x11: 0x11
# x15: 0xfb0
# x20: 0x13
# x21: 0xc
# x26: 0xfb0
# x27: 0x7c2
