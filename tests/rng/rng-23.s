# Seed: 1398270396

# Generation 174

# == filling regs ==
addi   t1, x0, 0x7fd
addi   s5, x0, 0xb6
addi   t0, x0, 0xca
addi   s9, x0, 0x21c
addi   s4, x0, 0x733

# == code ==
srl    a2, s10, t5
sd     a1, 19(s5)
sltiu  s1, x0, 0x7ba
slt    a4, t3, s3
slli   s9, gp, 0x1f
xori   t0, a1, 0x3c
and    ra, t6, s4
lwu    t4, 2015(s6)
sub    s11, t0, a6
sltu   a1, s6, t3
slt    s7, x0, t1
lhu    gp, 2038(s5)
slt    a3, t3, t5
auipc  a1, 0x50
addi   a5, a2, 0x7c6
lwu    s1, 1984(s5)
slli   s2, ra, 0xd
sltu   s7, s3, s0
lwu    a1, 2025(s9)
add    tp, a2, a4
addi   t1, s8, 0x7bf
slti   t1, a6, 0x54
bgeu   x0, s4, 0x4c0
sw     s10, 58(a5)
srai   tp, a7, 0x3
addi   t5, t5, 0xca
addi   a2, s0, 0x49
addi   a0, s4, 0x51f
lhu    tp, 78(ra)
bne    s11, s4, 0xc

# EXPECTED
# x2: 0x4000
# x4: 0x7c66
# x5: 0x3c
# x6: 0x1
# x10: 0xc52
# x12: 0x49
# x15: 0x7c6
# x20: 0x733
# x21: 0xb6
# x27: 0x3c
# x30: 0xca
