# Seed: 1201346789

# Generation 3

# == filling regs ==
addi   s5, x0, 0x7e9
addi   t1, x0, 0x54
addi   t0, x0, 0x1d8
addi   t4, x0, 0x4f
addi   t0, x0, 0x7c6

# == code ==
slli   s8, a1, 0x11
lw     t5, 880(s11)
and    a2, t6, t1
slti   s11, s4, 0xac
lhu    x0, 68(a3)
lhu    s11, 2002(s11)
sra    sp, ra, s7
xor    t3, s11, s8
lwu    t1, 2037(s9)
blt    t4, a7, -0x30 # (0xffffffd0)
addi   t4, a2, 0xf
and    s1, s2, s9
lhu    s9, 1339(s6)
blt    t5, t3, -0x48 # (0xffffffb8)
sltu   t2, t4, a3
xori   t5, sp, 0x7b0
sltu   t4, s0, a5
slt    a6, x0, s2
or     t4, tp, s6
or     t0, ra, s9
ori    s10, x0, 0x7e9
or     s6, x0, t2
add    a0, a4, s5
slti   t2, x0, 0x7f7
srai   a5, t0, 0x19
ori    gp, s0, 0x4
srai   t1, s2, 0x1a
lb     s8, 2002(a0)
bltu   t4, a3, 0x34
sd     a6, 1997(a2)

# EXPECTED
# x3: 0x4
# x7: 0x1
# x10: 0x7e9
# x21: 0x7e9
# x26: 0x7e9
# x30: 0x7b0
