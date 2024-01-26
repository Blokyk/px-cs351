# Seed: 922776018

# Generation 270

# == filling regs ==
addi   s0, x0, 0x2a
addi   s6, x0, 0x7d3
addi   t4, x0, 0x5
addi   t1, x0, 0x57
addi   a6, x0, 0x7e1

# == code ==
bltu   s8, tp, -0xadc # (0xfffff524)
sb     s9, 1997(ra)
and    s8, s5, t3
lwu    t1, 2024(t5)
sll    a4, a4, t4
srai   s8, a7, 0x5
lui    s7, 0xf50c2
ori    gp, s1, 0x52d
sltu   s3, s7, gp
xor    s9, s7, t1
sb     a6, 162(a6)
xor    sp, ra, s10
and    gp, ra, s2
sh     t0, 36(tp)
sll    tp, s10, s3
add    sp, x0, a6
addi   t5, s9, 0x7f7
lhu    s11, 63(t1)
xor    t3, a3, s2
slt    x0, tp, a5
xori   s3, a2, 0x44
lw     a2, 127(t4)
srai   a1, a5, 0x14
xor    a7, gp, s5
addi   s6, t5, 0x20
sltu   t0, s4, t3
slti   s0, tp, 0x79f
and    s2, s5, s5
ld     t0, 1834(a3)
slti   t1, s5, 0x7c9

# EXPECTED
# x2: 0x7e1
# x6: 0x1
# x8: 0x1
# x12: 0x72a6b283
# x16: 0x7e1
# x19: 0x44
# x22: -0xaf3d7e9
# x23: -0xaf3e000
# x25: -0xaf3e000
# x27: 0x330b
# x29: 0x5
# x30: -0xaf3d809
