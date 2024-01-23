# Seed: 1943823986

# Generation 103

# == filling regs ==
addi     a3,   x0, 0x16
addi     t4,   x0, 0x3d
addi     ra,   x0, 0x43
addi     a7,   x0, 0xe1
addi     t2,   x0, 0x7ec

# == code ==
ori      t5,   s6, 0x7ed
slli     s0,   sp, 0x4
xor      t4,   s1,   a7
slti     s2,   a4, 0x7b3
andi    s10,   t5, 0x70e
xor      t6,   s6,   a6
andi     s0,   s3, 0x5c
xori     t6,   s4, 0x163
slli     s1,   a3, 0xc
srai     t5,   a5, 0x4
lb       ra, 83(s7)
sb      s11, 1966(s11)
andi     sp,  s11, 0x3d8
slt      s1,   s7,  s10
slli     a3,   a6, 0x18
lwu      t1, 40(tp)
xor      sp,   t5,  s11
lhu      t4, 75(sp)
sub      t5,   s4,   a4
ld       a0, 2012(a5)
srl      a3,   s6,   t3
sd      s10, 52(s8)
andi     t1,   s7, 0x2
xori     t2,   s4, 0x35
lb       t4, 88(a3)
sll      sp,   ra,   a1
srai     s4,   t5, 0xa
sb       tp, 1953(s3)
add      t0,   ra,   s4
jal      a3, 0x30

# EXPECTED
# x1: 0x2
# x2: 0x2
# x5: 0x2
# x7: 0x35
# x9: 0x1
# x13: 0x8c
# x17: 0xe1
# x18: 0x1
# x26: 0x70c
# x29: -0x7d
# x31: 0x163
