# Seed: 158830450


# == filling regs == 

# == code == 
srai   x12, x11, 0x1a # 1
sra    x10, x24, x21 # 2
sll    x25, x28, x18 # 3
sra    x26, x16, x13 # 4
xor    x23, x13,  x3 # 5
lhu    x19, 870(x19) # 6
sltu   x17, x21, x10 # 7
sll     x1,  x0,  x5 # 8
and    x31, x28, x28 # 9
add     x8, x26,  x6 # 10
ori     x4, x12, 0x7c6 # 11
add    x12,  x3, x23 # 12
ori    x28,  x8, 0x20d # 13
sltu   x25, x15,  x7 # 14
xor    x24, x17,  x7 # 15
srli   x24, x29, 0x19 # 16
srl    x12,  x8,  x2 # 17
add    x30, x20,  x2 # 18
ori     x2,  x0, 0x63b # 19
sra    x23, x26, x21 # 20
andi   x15, x14, 0x4cc # 21
srai   x23, x14, 0x15 # 22
or     x31,  x5, x29 # 23
srai    x4, x20, 0x5 # 24
sltu    x7, x15, x31 # 25

# EXPECTED
# x2: 0x63b
# x28: 0x20d
# x30: 0x4000
