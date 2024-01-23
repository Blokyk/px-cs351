# Seed: 1175325997


# == filling regs == 

# == code == 
slli   x12, x27, 0xf # 1
sll     x6, x23, x27 # 2
blt    x13,  x5, -0x304 # (0xfffffcfc) # 3
andi    x0, x19, -0x501 # (0xfffffaff) # 4
sltiu  x11, x14, 0x53a # 5
andi   x19, x20, 0x440 # 6
slli   x17,  x1, 0x12 # 7
add    x10,  x1,  x5 # 8
and    x24, x10,  x8 # 9
slli   x16, x28, 0xb # 10
srl    x26, x22,  x2 # 11
sltiu  x25, x17, -0x542 # (0xfffffabe) # 12
ori    x14, x18, 0x341 # 13
sltiu   x5, x14, -0x705 # (0xfffff8fb) # 14
sll    x15, x28,  x9 # 15
andi   x27, x16, -0x2d5 # (0xfffffd2b) # 16
srli   x31,  x7, 0x13 # 17
slt    x13, x31, x14 # 18
sub     x9,  x3, x13 # 19
srl    x16, x12,  x5 # 20
slt     x8, x27, x29 # 21
sll     x0, x11, x15 # 22
sra     x6, x17, x19 # 23
bne     x5, x17, 0x344 # 24
ori    x13, x23, 0x3e9 # 25

# EXPECTED
# x2: 0x4000
# x5: 0x1
# x9: -0x1
# x11: 0x1
# x13: 0x1
# x14: 0x341
# x25: 0x1
