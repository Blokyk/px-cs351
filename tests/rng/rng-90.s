# Seed: 596886317

# Generation 177

# == filling regs ==
addi   s2, x0, 0x7c3
addi   s7, x0, 0x1f
addi   s10, x0, 0x4
addi   a7, x0, 0x18
addi   a4, x0, 0x7b2

# == code ==
and    s11, t6, s1
add    s4, a5, s7
sub    s10, t0, a2
sltiu  s2, s6, 0x7ea
sd     t5, 1323(gp)
andi   x0, t5, 0x7fc
addi   t3, s10, 0x2ef
slt    sp, s2, a4
and    t3, s11, gp
sb     t1, 78(ra)
bne    s6, s0, -0x4c # (0xffffffb4)
addi   t3, s6, 0xc
bltu   t3, s2, 0x18
addi   tp, s10, 0x74c
srl    s0, gp, sp
bne    t4, a3, 0xc
sb     t1, 90(gp)
slli   a4, a6, 0x4
sll    s5, a2, t4
andi   s0, a3, 0x7e3
sltiu  a4, t5, 0x1d
slti   t6, t2, 0x7b0
sra    s2, s2, t3
srl    s8, s8, a1
lwu    tp, 1570(s10)
sltiu  s11, x0, 0x7a8
lhu    a3, 98(a2)
sub    sp, s4, a0
lw     a3, 1992(t0)
addi   s2, x0, 0x5b

# EXPECTED
# x2: 0x1f
# x14: 0x1
# x17: 0x18
# x18: 0x5b
# x20: 0x1f
# x23: 0x1f
# x27: 0x1
# x28: 0xc
# x31: 0x1
