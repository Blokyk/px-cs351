# Seed: 712731206

# Generation 7

# == filling regs ==
addi   t6, x0, 0x56
addi   a1, x0, 0x7f4
addi   s1, x0, 0x62
addi   a0, x0, 0x4f
addi   s8, x0, 0x13

# == code ==
srl    sp, s3, a1
andi   t1, s7, 0x5f
sh     a6, 1962(s0)
lh     t4, 1970(t2)
srli   a4, x0, 0x1e
ori    a6, sp, 0x4cc
lwu    t2, 86(x0)
srli   a6, s4, 0xd
lb     a5, 1037(a1)
srai   a3, t6, 0x16
lhu    s8, 75(a0)
srli   s8, gp, 0xb
xori   a7, ra, 0x4d
sub    s0, s2, x0
sll    s8, a7, a3
add    s9, s11, a2
andi   s8, a0, 0x11b
and    s9, s2, t3
srai   s3, x0, 0x9
sra    s7, t1, t5
auipc  s5, 0x40
slli   ra, t0, 0x1b
slt    t2, s3, t1
srli   t2, s4, 0x13
sub    s1, s8, tp
lw     s10, 2015(s7)
add    s8, tp, s0
lwu    s7, 155(t3)
xor    s7, s3, a6
add    s2, a2, s9

# EXPECTED
# x9: 0xb
# x10: 0x4f
# x11: 0x7f4
# x17: 0x4d
# x21: 0x40064
# x31: 0x56
