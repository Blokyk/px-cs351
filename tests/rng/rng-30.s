# Seed: 386505543

# Generation 356

# == filling regs ==
addi   a1, x0, 0xd6
addi   x0, x0, 0x7df
addi   a1, x0, 0x1a2
addi   t2, x0, 0x13
addi   a2, x0, 0x7f8

# == code ==
lui    t3, 0xfffc5
add    t0, s1, t4
andi   s2, a2, 0x7e0
ori    s1, tp, 0x2d
slt    s9, t6, sp
lb     a1, 89(s5)
slti   t0, ra, 0x7b4
andi   t2, a1, 0x1fd
slt    s7, a3, s2
add    s5, a2, a0
bltu   s0, s3, -0x38 # (0xffffffc8)
and    s3, s7, s4
sltu   s2, s5, t1
sltu   a7, s4, s8
lwu    s0, 83(s1)
xori   s8, s7, 0x61
sd     s4, 31(s6)
addi   a0, s10, 0x409
or     s6, sp, ra
xori   s9, s2, 0x7a5
or     a6, a6, s8
xor    s1, s8, t3
sltiu  s3, s10, 0x10
srai   a1, t5, 0x18
slt    a0, t3, sp
sltiu  t0, s3, 0x1ad
sh     a3, 1977(a5)
sw     a4, 2004(a6)
srai   t3, a5, 0x1d
and    s11, s10, sp

# EXPECTED
# x2: 0x4000
# x5: 0x1
# x7: 0x5
# x8: 0x7ce82a23
# x9: -0x3afa0
# x10: 0x1
# x12: 0x7f8
# x16: 0x60
# x19: 0x1
# x21: 0x7f8
# x22: 0x4000
# x23: 0x1
# x24: 0x60
# x25: 0x7a5
