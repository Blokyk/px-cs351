# Seed: 1689873380

# Generation 95

# == filling regs ==
addi     t3,   x0, 0x31
addi     s4,   x0, 0xc
addi     s0,   x0, 0x7a8
addi     s4,   x0, 0x3b
addi     t4,   x0, 0x28

# == code ==
lwu      t1, 1953(a4)
and      s7,   s2,   t6
sltiu    s4,   a3, 0x3e4
sll      t5,   a5,   s8
or       a1,   t5,   s0
andi     s8,   t1, 0x7e9
slli     t6,   t0, 0xf
lh       a7, 55(s5)
slti     t6,   s6, 0x6c5
lh       s5, 2000(t2)
sltiu    t0,   ra, 0x1
sltu     a7,   a3,   a4
sd       sp, 55(s0)
andi     s2,   a7, 0x3c3
sh       s0, 84(s0)
slt      t6,   a0,   sp
sh       a7, 44(s1)
lui      t6, 0xfffdb
srli     s2,   s7, 0x19
sll      a7,   t0,   s0
slt     s10,   s9,   t5
or       t2,  s10,   x0
lw       a3, 52(s0)
sd       t3, 2008(t0)
sltiu    t5,   a1, 0x49
slti     tp,   ra, 0x7d0
srli     sp,  s11, 0x5
or       s2,   s2,   s4
jalr     a2, 36(s0)
andi     t3,   a1, 0x2c0

# EXPECTED
# x4: 0x1
# x5: 0x1
# x8: 0x7a8
# x11: 0x7a8
# x12: 0x88
# x17: 0x100
# x18: 0x1
# x20: 0x1
# x28: 0x31
# x29: 0x28
# x31: -0x25000
