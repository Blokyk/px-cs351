# Seed: 658894880


# == filling regs == 

# == code == 
srli    x6,  x3, 0x4 # 1
xor     x6, x17, x27 # 2
sub    x28, x13, x29 # 3
addi   x28, x12, -0x3b5 # (0xfffffc4b) # 4
or     x28, x19, x14 # 5
sll     x5, x13, x11 # 6
sltu   x19,  x8, x10 # 7
srli    x2,  x8, 0xf # 8
slli    x8, x28, 0x1a # 9
srai   x29,  x0, 0x1a # 10
sltiu   x6, x16, -0x3a5 # (0xfffffc5b) # 11
blt    x14, x22, -0x768 # (0xfffff898) # 12
sw     x29, 753(x9) # 13
andi   x13, x31, -0x2bb # (0xfffffd45) # 14
ori    x13, x18, 0x104 # 15
xori   x30,  x9, 0x78a # 16
addi    x4,  x4, 0x67b # 17
sub     x6, x25, x24 # 18
slli   x13,  x6, 0xb # 19
andi    x7,  x5, -0x6d9 # (0xfffff927) # 20
or     x27, x19,  x0 # 21
xori   x13, x22, 0x6e8 # 22
or     x21, x16, x16 # 23
xor    x20, x26, x27 # 24
ori    x15, x18, -0x225 # (0xfffffddb) # 25

# EXPECTED
# x4: 0x67b
# x13: 0x6e8
# x15: -0x225
# x30: 0x78a
