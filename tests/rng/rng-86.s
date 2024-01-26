# Seed: 386986948

# Generation 159

# == filling regs ==
addi   s0, x0, 0x213
addi   s10, x0, 0x2b3
addi   a4, x0, 0x558
addi   t5, x0, 0x49a
addi   a1, x0, 0x7f8

# == code ==
sb     a2, 1979(a5)
lwu    s0, 11(ra)
sra    gp, a7, s3
and    ra, t5, t2
sra    t2, s9, s9
srl    s9, tp, s10
srai   a6, a5, 0x13
sb     s8, 1132(t4)
slt    s9, t1, s1
srl    s0, t2, a1
sltu   t3, s10, s9
lh     t4, 777(t3)
lb     a4, 1972(t6)
srli   a3, a5, 0x11
lwu    s7, 2033(s5)
slti   a1, t5, 0x7ad
slli   t0, s9, 0x1
srli   t4, sp, 0x17
add    s11, s4, ra
sub    t1, a1, a4
sd     a3, 66(s5)
srli   t0, a7, 0xa
lw     a1, 1964(s0)
sd     s11, 1971(t2)
or     gp, s9, a1
and    s4, t3, t5
srli   a0, s4, 0x10
bltu   a6, s8, -0x788 # (0xfffff878)
addi   s9, t0, 0x7c1
sb     sp, 0(a5)

# EXPECTED
# x2: 0x4000
# x6: 0x1
# x25: 0x7c1
# x26: 0x2b3
# x30: 0x49a
