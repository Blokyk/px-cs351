# Seed: 669028210

# Generation 55

# == filling regs ==
addi   a3, x0, 0x7f1
addi   s5, x0, 0x7f7
addi   s0, x0, 0x1b
addi   s11, x0, 0x7ae
addi   gp, x0, 0x7b1

# == code ==
srai   s1, t1, 0x1f
srl    t5, t1, t1
blt    t1, s3, 0x48
lhu    t6, 768(s9)
addi   t6, t0, 0x7fa
sra    a1, t5, x0
addi   s4, gp, 0x7
slli   s10, tp, 0x11
add    ra, s1, t1
blt    t3, s3, -0x48 # (0xffffffb8)
sb     t2, 36(a5)
sra    a1, s6, t6
blt    gp, a4, -0x4 # (0xfffffffc)
slli   ra, s7, 0x12
lwu    tp, 564(x0)
srli   t6, a6, 0x18
or     a0, ra, a4
bltu   x0, t6, 0x4
addi   s8, t5, 0x7b2
xor    a1, a0, sp
srai   t3, t5, 0x17
sub    t1, a2, t2
and    s11, t5, t0
lbu    s11, 343(s11)
or     t4, a3, t4
andi   t6, t6, 0x7f3
or     s1, t5, a0
sltiu  s7, a4, 0x3ec
ori    t1, s4, 0x7
jal    s8, 0x14

# EXPECTED
# x2: 0x4000
# x3: 0x7b1
# x6: 0x7bf
# x8: 0x1b
# x11: 0x4000
# x13: 0x7f1
# x20: 0x7b8
# x21: 0x7f7
# x23: 0x1
# x24: 0x8c
# x29: 0x7f1
