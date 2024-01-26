# Seed: 972318619

# Generation 8

# == filling regs ==
addi   t5, x0, 0x63
addi   s11, x0, 0x0
addi   s0, x0, 0x0
addi   t3, x0, 0x7d9
addi   t6, x0, 0x7d8

# == code ==
and    t4, a5, t0
sra    t6, t5, a3
sb     t0, 1918(a6)
and    s2, s2, s9
slt    x0, s7, s10
auipc  s0, 0x46498
srai   a1, tp, 0xf
srai   s1, tp, 0x1a
srai   sp, a2, 0x1a
ld     a3, 1981(s1)
xori   t2, gp, 0xc
slli   x0, s7, 0x1a
add    t0, t3, tp
slti   s9, s9, 0x736
xori   s10, a1, 0x7c3
sltiu  s11, x0, 0x610
ori    a7, s2, 0x4b
bge    ra, t0, 0x1c
sltiu  t6, s9, 0x7db
sw     t6, 1548(s1)
or     t5, t3, a1
slti   gp, t2, 0x9
blt    t2, s1, -0xc # (0xfffffff4)
xor    a3, x0, s9
sub    t4, s11, s0
sra    t6, s9, a2
sll    a2, sp, ra
auipc  a1, 0xfffbc
xor    s0, a4, t6
sub    s4, t3, s3

# EXPECTED
# x5: 0x7d9
# x7: 0xc
# x8: 0x1
# x11: -0x43f80
# x13: 0x1
# x17: 0x4b
# x20: 0x7d9
# x25: 0x1
# x26: 0x7c3
# x27: 0x1
# x28: 0x7d9
# x29: -0x46498027
# x30: 0x7d9
# x31: 0x1
