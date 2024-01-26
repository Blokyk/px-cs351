# Seed: 747228324

# Generation 178

# == filling regs ==
addi   ra, x0, 0x31
addi   t1, x0, 0x7d3
addi   tp, x0, 0x7ee
addi   t0, x0, 0x507
addi   s3, x0, 0x13

# == code ==
sb     t0, 1439(t1)
ld     a5, 1897(t4)
srli   a1, t2, 0x9
addi   a3, s1, 0x7fb
ori    t6, s10, 0x444
sll    s4, a4, t4
lbu    a7, 1969(a1)
lh     sp, 66(t1)
add    s10, s4, a1
sltu   x0, s0, a2
blt    s0, a0, 0x60
blt    a0, s7, 0x4
srai   a4, t2, 0x1d
xori   s1, a3, 0x7d5
sltiu  t0, a6, 0x2d
slli   a4, s11, 0x6
lhu    t1, 77(sp)
sd     sp, 1482(t0)
sh     x0, 1958(a5)
addi   t4, a2, 0x30
or     a1, a3, s4
sw     t1, 87(a1)
sh     s1, 38(a0)
andi   s10, t0, 0x7e6
sub    tp, s9, t4
sb     a0, 2034(t3)
slli   s0, s8, 0x10
sll    s8, a4, s6
sw     ra, 61(s9)
ld     a4, 47(t2)

# EXPECTED
# x1: 0x31
# x4: -0x30
# x5: 0x1
# x6: 0xd832
# x9: 0x2e
# x11: 0x7fb
# x13: 0x7fb
# x14: -0x45f2ccfbdceefc85
# x19: 0x13
# x29: 0x30
# x31: 0x444
