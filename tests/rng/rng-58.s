# Seed: 1978977567

# Generation 255

# == filling regs ==
addi     s7,   x0, 0x7d6
addi     t6,   x0, 0x237
addi     s8,   x0, 0x54
addi     tp,   x0, 0x7a7
addi     tp,   x0, 0xe

# == code ==
bge      t4,   s5, 0x8
blt      a3,   gp, -0x4c # (0xffffffb4)
sll      t5,   a5,   t5
srai     tp,   t2, 0x3
xor      t4,   sp,   sp
slti     t1,   t4, 0x3d
andi     a1,   a0, 0x348
srai     s5,   a5, 0x1f
ori      s5,   s8, 0x34
srli     tp,   a6, 0x7
addi     t1,   s9, 0x4b5
bne      a5,   a7, -0x3c # (0xffffffc4)
slti     s8,   t2, 0x56
sltiu    x0,   s1, 0x53
addi     s1,   tp, 0x529
lhu      s3, 71(s11)
sltiu    x0,   t2, 0xa
lwu      a5, 1974(s4)
lb       tp, 873(a3)
sltu    s10,   sp,   ra
sltu     s4,   s2,   a1
bgeu     t3,   sp, -0x28 # (0xffffffd8)
lw       s3, 6(a3)
andi     gp,   a7, 0x7bf
lui     s10, 0xffff1
add      s3,   t6,   a0
or       s2,   a5,   s5
bgeu     s7,  s10, -0x34 # (0xffffffcc)
sd      s10, 37(s7)
or       s1,   tp,   sp

# EXPECTED
# x2: 0x4000
# x6: 0x4b5
# x9: 0x4000
# x18: 0x74
# x19: 0x237
# x21: 0x74
# x23: 0x7d6
# x24: 0x1
# x26: -0xf000
# x31: 0x237
