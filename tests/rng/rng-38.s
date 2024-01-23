# Seed: 2008986915


# == filling regs == 

# == code == 
srai   x10,  x7, 0x8 # 1
sltiu   x3, x23, -0x7be # (0xfffff842) # 2
sltu   x26, x31, x24 # 3
andi   x15, x18, -0x110 # (0xfffffef0) # 4
sub    x25, x28, x19 # 5
sltiu  x20, x19, 0x6e4 # 6
srli   x18,  x4, 0x2 # 7
sub     x3, x20, x13 # 8
blt    x18, x24, -0x304 # (0xfffffcfc) # 9
slli   x11,  x6, 0x2 # 10
sra     x4, x24, x24 # 11
slti   x17,  x6, -0x4b5 # (0xfffffb4b) # 12
sb     x27, 993(x16) # 13
xori   x24, x28, 0x12 # 14
slli    x7, x24, 0x3 # 15
ori     x9, x27, -0x2a4 # (0xfffffd5c) # 16
srai    x9, x27, 0x17 # 17
andi   x13, x21, -0x3b1 # (0xfffffc4f) # 18
slti   x17,  x9, -0x566 # (0xfffffa9a) # 19
lh     x24, 1616(x4) # 20
sltu   x12,  x3, x28 # 21
slli    x4, x20, 0x9 # 22
and     x4,  x0,  x0 # 23
xori   x20,  x9, 0x3e1 # 24
sll    x31,  x0, x10 # 25

# EXPECTED
# x2: 0x4000
# x3: 0x1
# x7: 0x90
# x20: 0x3e1
