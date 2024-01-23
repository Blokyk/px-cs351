# Seed: 1488020452


# == filling regs == 

# == code == 
addi   x22, x17, 0xbd # 1
sltu   x27,  x0,  x4 # 2
srli   x14, x15, 0x19 # 3
and    x18,  x1,  x8 # 4
xor     x4,  x8, x17 # 5
ori    x30, x21, 0x493 # 6
slli    x3,  x0, 0xc # 7
and     x7, x20, x26 # 8
ori    x24, x23, -0xb2 # (0xffffff4e) # 9
add    x13,  x4, x26 # 10
sltu   x28, x17, x22 # 11
sub     x1, x15, x30 # 12
srli   x12, x22, 0x0 # 13
addi    x1, x20, -0x3b5 # (0xfffffc4b) # 14
srli   x24,  x3, 0x1c # 15
addi   x15,  x0, -0x56d # (0xfffffa93) # 16
or     x12, x31,  x2 # 17
ori     x9, x26, 0x293 # 18
beq    x15, x17, 0x140 # 19
slt    x30,  x7, x22 # 20
sll     x1,  x5, x27 # 21
sltiu  x18, x14, 0x71a # 22
addi   x31,  x2, 0x5f0 # 23
sltiu  x13,  x5, -0xef # (0xffffff11) # 24
bltu   x12, x26, -0xb8c # (0xfffff474) # 25

# EXPECTED
# x2: 0x4000
# x9: 0x293
# x12: 0x4000
# x13: 0x1
# x15: -0x56d
# x18: 0x1
# x22: 0xbd
# x28: 0x1
# x30: 0x1
# x31: 0x45f0
