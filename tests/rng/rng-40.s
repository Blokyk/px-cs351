# Seed: 1801540536

# Generation 409

# == filling regs ==
addi   t3, x0, 0x692
addi   a5, x0, 0x46
addi   t0, x0, 0x7ff
addi   s9, x0, 0x5e8
addi   s1, x0, 0x7cd

# == code ==
addi   t0, s9, 0xe
lhu    tp, 2029(s8)
sd     s7, 2023(s8)
add    s4, s7, s9
sw     s4, 2001(t5)
add    t0, s7, s5
slti   gp, a3, 0x239
slti   a4, a7, 0x7af
xor    t5, a6, sp
sltu   a3, s4, tp
lh     a5, 9(t0)
sll    t6, a2, t0
bltu   t3, s5, 0x390
srai   t0, s5, 0x14
xor    s0, a7, s11
srai   s2, a7, 0x8
xori   a2, a3, 0x7e6
lw     s11, 2046(a7)
auipc  s10, 0xfffe2
lui    t6, 0x47
lwu    s1, 75(tp)
srl    t0, s8, t2
andi   a7, t1, 0x123
srai   a7, s7, 0xa
xori   t6, t3, 0x22
srai   a1, t0, 0x8
xor    s4, t5, a1
xori   a4, s3, 0x2
sh     t0, 83(s8)
lhu    a1, 2028(t1)

# EXPECTED
# x2: 0x4000
# x3: 0x1
# x9: 0xb8c43341
# x12: 0x7e6
# x14: 0x2
# x15: -0xffe
# x20: 0x4000
# x25: 0x5e8
# x26: -0x1dfa4
# x28: 0x692
# x30: 0x4000
# x31: 0x6b0
