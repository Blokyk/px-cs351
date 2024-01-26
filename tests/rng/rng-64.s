# Seed: 1758247553

# Generation 48

# == filling regs ==
addi   x0, x0, 0x7d7
addi   sp, x0, 0x4e8
addi   x0, x0, 0x16
addi   a3, x0, 0x52
addi   a5, x0, 0x7cf

# == code ==
srli   a4, s2, 0x7
andi   s8, s8, 0x7bc
lh     a0, 1976(sp)
xor    a5, t1, s8
sub    s5, s9, a3
bltu   t5, t1, 0xdbc
bne    s3, s2, 0x954
sw     s0, 19(t5)
sd     a1, 2032(a1)
sltu   t2, s8, t1
andi   s2, a5, 0x3c
ori    tp, sp, 0x7cc
sub    t3, a5, s0
add    t3, s3, s10
xori   s5, s8, 0x3d4
ori    sp, a5, 0x6ea
auipc  gp, 0x4
srl    t6, s1, a0
addi   s11, x0, 0x7f2
sb     s8, 16(s4)
ori    x0, s6, 0x21
ori    a2, a7, 0x5e
sh     a7, 1985(ra)
sb     s5, 187(s10)
andi   tp, s5, 0x512
lh     s2, 2026(s3)
lb     t4, 629(x0)
slti   gp, t3, 0x553
sltiu  gp, a1, 0x29
lh     gp, 914(s7)

# EXPECTED
# x2: 0x6ea
# x4: 0x110
# x12: 0x5e
# x13: 0x52
# x21: 0x3d4
# x27: 0x7f2
