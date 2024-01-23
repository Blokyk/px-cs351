# Seed: 2033079959

# Generation 1

# == filling regs ==
addi     sp,   x0, 0xab
addi     a5,   x0, 0x7ca
addi     t0,   x0, 0x2af
addi     t0,   x0, 0x7e6
addi     t5,   x0, 0x4b

# == code ==
or       a6,   ra,   s4
sll      t6,   tp,   s7
xor      a6,   t1,   a0
blt      t2,   a2, -0x4 # (0xfffffffc)
sb       s1, 1997(s3)
sh       sp, 23(s2)
sltiu    a3,   s0, 0x2c
sh       t6, 1968(t0)
sb       s6, 27(t4)
addi     t5,   a4, 0x2b
srai     gp,   a6, 0x18
xori     s0,   a6, 0x60
sh       s5, 1976(t4)
sub      ra,   a0,   tp
srai     x0,   gp, 0xc
xor      s6,   gp,   t5
xor      t3,   a5,  s11
beq      t2,   t0, 0x2c
sd       a1, 883(a1)
xori     gp,   t5, 0x7eb
lb       t3, 381(tp)
ori      s5,   t2, 0x5c
add      s4,   a7,   a4
ori      a0,   a6, 0x23
andi    s10,   s5, 0x7f1
srli     s4,   t5, 0x17
sra      t1,   t0,   s5
slli     gp,   s7, 0x1c
sltiu    tp,   a1, 0x57
lui      s7, 0x54a31

# EXPECTED
# x2: 0xab
# x4: 0x1
# x5: 0x7e6
# x8: 0x60
# x10: 0x23
# x13: 0x1
# x15: 0x7ca
# x21: 0x5c
# x22: 0x2b
# x23: 0x54a31000
# x26: 0x50
# x30: 0x2b
