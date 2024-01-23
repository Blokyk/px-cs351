# Seed: 1702503158


# == filling regs == 

# == code == 
srli   x31, x11, 0x8 # 1
lbu    x18, 1474(x20) # 2
slti    x6, x11, -0x13f # (0xfffffec1) # 3
sltiu   x1, x30, 0x496 # 4
or     x24,  x1, x16 # 5
sltiu  x16, x21, 0x2fd # 6
add     x6, x19, x26 # 7
srli    x1,  x3, 0x15 # 8
srli    x4,  x2, 0x0 # 9
or     x15, x30, x25 # 10
or     x30, x16,  x4 # 11
xor     x3,  x0, x19 # 12
lwu    x22, 1781(x3) # 13
slti   x19, x17, -0x145 # (0xfffffebb) # 14
slt    x31,  x6,  x1 # 15
ori    x31, x13, 0x6c0 # 16
slli   x12, x23, 0x1a # 17
beq     x1, x24, -0xd40 # (0xfffff2c0) # 18
sra     x4, x17, x10 # 19
slt     x8,  x8, x23 # 20
addi   x26, x17, -0x47b # (0xfffffb85) # 21
sw     x11, 11(x18) # 22
sll     x5, x14, x25 # 23
slli   x16, x22, 0x4 # 24
sll     x9, x29, x14 # 25

# EXPECTED
# x2: 0x4000
# x24: 0x1
# x26: -0x47b
# x30: 0x4001
# x31: 0x6c0
