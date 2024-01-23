# Seed: 41258412


# == filling regs == 

# == code == 
srli   x20, x20, 0xf # 1
sll    x25, x14, x24 # 2
ori    x28, x18, -0x23b # (0xfffffdc5) # 3
bltu   x25, x20, -0x3e0 # (0xfffffc20) # 4
or     x28,  x6, x20 # 5
ori    x24,  x9, -0x435 # (0xfffffbcb) # 6
add    x30, x20, x19 # 7
xor     x2, x12,  x3 # 8
slti    x0,  x0, -0x17c # (0xfffffe84) # 9
lh     x31, 1285(x7) # 10
lbu     x1, 351(x20) # 11
xor     x8,  x3, x11 # 12
slti   x10,  x6, -0x62 # (0xffffff9e) # 13
srai   x16,  x9, 0x1f # 14
xori   x16,  x2, 0x4ec # 15
sra    x13,  x4,  x1 # 16
sltiu  x29, x10, -0x51 # (0xffffffaf) # 17
srli   x11, x10, 0x1b # 18
andi   x20, x18, -0x256 # (0xfffffdaa) # 19
add     x0, x16, x17 # 20
addi   x16,  x2, -0x1d2 # (0xfffffe2e) # 21
sll    x20,  x3, x19 # 22
slti   x14, x26, 0x7fc # 23
sll    x21, x17, x20 # 24
slti   x22, x27, -0x3ce # (0xfffffc32) # 25

# EXPECTED
# x14: 0x1
# x16: -0x1d2
# x24: -0x435
# x29: 0x1
