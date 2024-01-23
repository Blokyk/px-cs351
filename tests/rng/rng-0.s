# Seed: 1543898382

# Generation 41001

# == filling regs ==
addi     a3,   x0, 0x7f7
addi    s11,   x0, 0x20e
addi     s7,   x0, 0x789
addi     s7,   x0, 0x7fb
addi     t3,   x0, 0x13

# == code ==
slti     a5,   t1, 0x7a2
sb       t1, 1938(ra)
slli     s3,   t4, 0x0
slt      a1,   t0,   a3
sltu     gp,   s8,   gp
sltiu    s6,   tp, 0x7b4
bgeu     a5,   sp, -0x348 # (0xfffffcb8)
add      x0,   s7,   a5
slli     a0,   sp, 0x17
slti     tp,   s0, 0x3c
xor      t3,   s1,   a1
sub      s3,   tp,   gp
sw       t2, 37(a2)
addi     s1,   tp, 0x7fd
blt      gp,   s5, 0x380
sub      t4,   a6,   gp
slli     x0,   a4, 0x5
slli     s2,   s7, 0x14
lw       gp, 1998(t4)
sb       s9, 39(t5)
sll      s4,   a1,   t4
xor      gp,  s11,   t5
sw      s10, 93(s5)
lhu      s0, 363(a6)
sub      s4,   a7,   t5
xori     a0,   t5, 0x4e4
ori     s11,   a5, 0x19
xor      s5,   s0,   a5
sll      a4,  s10,   t3
addi     gp,   s8, 0x5fd
addi     s1,   s7, 0x3d
lhu      ra, 67(a3)
srli     t5,   s0, 0xb
xor      sp,   a2,   s1
auipc    sp, 0x1ed73
xor      t2,   t4,  s11
sw       a3, 2007(t3)
bgeu     s9,   s7, 0x38
sw       a5, 1858(s11)
lw       s7, 506(a1)
sh       sp, 28(gp)
lbu      sp, 2025(s3)
slti     tp,   t4, 0x7c5
srli     tp,   t1, 0xf
or       s3,  s11,   gp
sw       x0, 8(s4)
sra     s11,   t6,   s6
srai     a7,   t2, 0x1a
add      x0,   s4,   t6
srli     a3,   t6, 0xa
sra      s9,   a7,   gp
addi     a4,   a4, 0x2a
bgeu     a2,   s2, -0x34 # (0xffffffcc)
xori     s5,   t6, 0x330
sw       tp, 2021(s9)
slli     gp,   t0, 0x1c
lhu      t1, 1953(a7)
beq      s2,   s4, -0x4 # (0xfffffffc)
xor      sp,   s5,   a1
ori      sp,   s4, 0x7de
ori      t6,  s11, 0x8
bltu     a5,   tp, -0xbe0 # (0xfffff420)
ld       tp, 91(s7)
srli     a0,   t6, 0x13
slti     sp,   s3, 0x3b
bge      t3,   t6, 0x38
xori    s11,   ra, 0x7ed
sltiu    sp,   s6, 0x13
slli     s0,   t3, 0x11
lh       t6, 44(a0)
lhu      a4, 2039(x0)
auipc    ra, 0x53694
sub      s6,   tp,   s1
ori      t1,   a5, 0x7f0
srai     a6,   tp, 0xf

# EXPECTED
# x1: 0x53694130
# x2: 0x1
# x4: -0x60fcffffffff7cff
# x6: 0x7f1
# x7: 0x19
# x8: 0x20000
# x9: 0x838
# x11: 0x1
# x15: 0x1
# x16: -0xc1f9ffffffff
# x18: 0x7fb00000
# x19: 0x5fd
# x21: 0x330
# x22: -0x60fcffffffff8537
# x27: 0x7ed
# x28: 0x1
# x31: -0x31d
