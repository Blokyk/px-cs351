# Seed: 2099530075

# Generation 573

# == filling regs ==
addi     x0,   x0, 0x7d0
addi     t2,   x0, 0x121
addi     x0,   x0, 0x338
addi     t1,   x0, 0x2e0
addi     a7,   x0, 0x7cf

# == code ==
lui      ra, 0xfffbf
addi     s9,   t1, 0x498
sh       t0, 1880(t4)
sw       s2, 2013(tp)
lb       a6, 1956(a1)
sra      s2,   tp,   s2
srai     t1,   t0, 0x1b
slti     a2,   a4, 0x360
addi     a3,   t3, 0x60
sltiu    t2,   t2, 0x7df
xor      s7,   a1,   ra
andi     t4,   s6, 0x7af
or       sp,   s9,   s9
sd       s6, 2045(s2)
sd       a1, 544(s1)
sd       t5, 2038(a0)
and      tp,   a6,   t1
add      tp,   tp,   t6
sltiu    t3,   t3, 0x7ad
lw       a0, 2036(a2)
auipc    a3, 0x9adf5
sll      s5,   s3,  s11
srli     ra,   t6, 0x18
slt      a2,   t3,  s10
and      gp,   a1,   t2
bltu     s0,   s4, 0x58
lh       a1, 75(ra)
slli     t0,   a1, 0x16
lw       a2, 58(s9)
bltu    s10,   s8, -0xa28 # (0xfffff5d8)

# EXPECTED
# x2: 0x778
# x5: 0x8dfc00000
# x7: 0x1
# x11: 0x237f
# x13: -0x6520af9c
# x17: 0x7cf
# x23: -0x41000
# x25: 0x778
# x28: 0x1
