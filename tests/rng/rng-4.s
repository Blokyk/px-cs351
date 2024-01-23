# Seed: 1777939270


# == filling regs == 

# == code == 
lh     x11, 124(x5) # 1
xor    x14, x12,  x8 # 2
xor    x30, x31,  x4 # 3
sltiu  x10,  x5, 0x6f8 # 4
xor     x1, x12,  x9 # 5
or     x15,  x5, x30 # 6
srli   x23,  x8, 0x11 # 7
bne    x19,  x4, 0x4a0 # 8
sub     x0,  x4, x13 # 9
addi    x5,  x8, 0x31c # 10
srl    x14, x21, x22 # 11
andi    x2,  x2, 0x11 # 12
slti   x27, x18, 0x483 # 13
sltu    x0, x14, x30 # 14
xori   x13, x12, 0x662 # 15
addi   x22, x20, 0x1f2 # 16
xori   x17,  x6, 0x9c # 17
srl     x0,  x4,  x6 # 18
ori    x10, x31, 0x18a # 19
xori   x28,  x6, 0x7c # 20
sra    x15, x12, x22 # 21
srli   x19, x14, 0x12 # 22
sd     x27, 1033(x14) # 23
slti   x15, x23, -0x16c # (0xfffffe94) # 24
srl    x13, x19, x30 # 25

# EXPECTED
# x5: 0x31c
# x10: 0x18a
# x17: 0x9c
# x22: 0x1f2
# x27: 0x1
# x28: 0x7c
