# Seed: 465086760


# == filling regs == 

# == code == 
ld     x13, 1870(x12) # 1
sltiu   x8, x13, 0x647 # 2
addi   x19,  x5, -0x519 # (0xfffffae7) # 3
sw     x21, 1518(x3) # 4
sltu   x14, x20, x16 # 5
sra    x29, x25, x12 # 6
sltiu   x6, x31, 0x335 # 7
bltu    x9, x12, -0x4cc # (0xfffffb34) # 8
slti    x8, x21, 0x17 # 9
slli   x14, x27, 0x2 # 10
sra    x23,  x5, x11 # 11
sw     x22, 1483(x27) # 12
xori   x10,  x5, -0x7ca # (0xfffff836) # 13
addi   x26,  x3, 0x4 # 14
and    x25, x30, x22 # 15
sltiu  x28,  x5, -0x1c6 # (0xfffffe3a) # 16
srli   x28, x14, 0x1d # 17
ori     x0, x12, -0x246 # (0xfffffdba) # 18
beq     x2, x10, -0x38c # (0xfffffc74) # 19
slti    x9, x31, -0x754 # (0xfffff8ac) # 20
sra    x22,  x3, x24 # 21
andi    x6,  x0, -0x52d # (0xfffffad3) # 22
srai   x28,  x6, 0x1 # 23
xori   x24,  x8, -0x7fb # (0xfffff805) # 24
bgeu    x1, x26, 0xabc # 25

# EXPECTED
# x2: 0x4000
# x8: 0x1
# x10: -0x7ca
# x19: -0x519
# x24: -0x7fc
# x26: 0x4
