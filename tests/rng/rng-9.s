# Seed: 670570856


# == filling regs == 

# == code == 
or     x21,  x7, x15 # 1
xor    x26, x14, x22 # 2
bltu   x11, x12, -0x9c4 # (0xfffff63c) # 3
sltiu  x29, x29, 0x634 # 4
slti   x12, x24, -0x4f6 # (0xfffffb0a) # 5
sltu   x16, x12, x31 # 6
add     x4,  x9, x27 # 7
lh      x5, 661(x24) # 8
slli   x10, x31, 0x15 # 9
addi    x3,  x1, 0xe7 # 10
or     x25,  x8, x26 # 11
slti   x31, x12, -0x481 # (0xfffffb7f) # 12
xori    x7, x23, -0x7fb # (0xfffff805) # 13
srai   x19, x21, 0x7 # 14
andi    x5,  x8, -0x31 # (0xffffffcf) # 15
add     x0,  x1, x28 # 16
blt    x10, x19, 0x920 # 17
ori    x17, x11, -0xd6 # (0xffffff2a) # 18
addi   x16,  x9, -0x1bd # (0xfffffe43) # 19
add     x6, x27, x17 # 20
srl    x17, x19, x17 # 21
xori   x10, x25, -0x547 # (0xfffffab9) # 22
sd      x6, 989(x3) # 23
sub     x4,  x2, x28 # 24
srli   x23, x13, 0x1a # 25

# EXPECTED
# x2: 0x4000
# x3: 0xe7
# x4: 0x4000
# x6: -0xd6
# x7: -0x7fb
# x10: -0x547
# x16: -0x1bd
# x29: 0x1
