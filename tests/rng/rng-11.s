# Seed: 1762006382


# == filling regs == 

# == code == 
xori    x2,  x9, -0x4a7 # (0xfffffb59) # 1
ori    x29, x29, -0x3db # (0xfffffc25) # 2
addi    x3, x16, 0x4e2 # 3
xor    x13, x18, x26 # 4
xori    x8, x25, 0x3e3 # 5
or     x16,  x8, x22 # 6
sll     x2, x10, x21 # 7
sd     x25, 978(x11) # 8
sltu   x23, x24,  x4 # 9
slt    x26,  x7, x15 # 10
sltiu  x28,  x4, -0x4a9 # (0xfffffb57) # 11
srai    x4, x10, 0xc # 12
sll     x0,  x8, x17 # 13
ld      x7, 1476(x1) # 14
slli   x18, x11, 0x1c # 15
slli    x7, x19, 0x16 # 16
ld     x16, 1899(x28) # 17
slt    x10, x27,  x2 # 18
addi   x28, x26, 0x5d9 # 19
sltu    x3, x21, x13 # 20
slli    x2, x27, 0x7 # 21
slti   x14, x18, 0x681 # 22
or      x5,  x9,  x1 # 23
slt    x18, x23, x12 # 24
sll     x0, x20, x20 # 25

# EXPECTED
# x8: 0x3e3
# x14: 0x1
# x28: 0x5d9
# x29: -0x3db
