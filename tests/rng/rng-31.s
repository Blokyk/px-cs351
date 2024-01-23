# Seed: 75798212


# == filling regs == 

# == code == 
slli   x26, x30, 0x1a # 1
xori   x28, x28, -0x69c # (0xfffff964) # 2
srl     x4, x13,  x3 # 3
addi   x26, x29, 0x225 # 4
sltiu  x25, x13, 0x60c # 5
sll     x8, x19, x25 # 6
lhu    x20, 1003(x24) # 7
sltu    x2,  x9, x10 # 8
lw     x20, 540(x8) # 9
andi   x31, x18, 0x203 # 10
slti   x21,  x4, 0x4d5 # 11
sb     x21, 79(x10) # 12
srli   x20, x24, 0x6 # 13
xori   x14, x24, -0x2f0 # (0xfffffd10) # 14
sra    x19, x22, x26 # 15
sltu   x12, x14, x21 # 16
xor    x10, x25, x21 # 17
addi   x30, x28, 0x759 # 18
slti    x6, x11, 0x6 # 19
sltiu  x24, x24, 0x716 # 20
slt    x15, x15, x30 # 21
slli    x1,  x2, 0xe # 22
ori    x30, x13, -0x4d # (0xffffffb3) # 23
add     x1,  x8, x14 # 24
srli   x12, x25, 0x11 # 25

# EXPECTED
# x1: -0x2f0
# x6: 0x1
# x14: -0x2f0
# x15: 0x1
# x21: 0x1
# x24: 0x1
# x25: 0x1
# x26: 0x225
# x28: -0x69c
# x30: -0x4d
