# Seed: 604836373


# == filling regs == 

# == code == 
sh     x24, 1542(x23) # 1
andi    x6, x25, 0x5b3 # 2
sra    x10,  x6, x24 # 3
sll    x12, x31,  x6 # 4
sll     x6,  x6, x20 # 5
srai   x20, x17, 0x13 # 6
lbu     x0, 1816(x19) # 7
sll     x9, x17, x29 # 8
sltu   x20,  x5,  x6 # 9
sltiu  x13, x29, -0x239 # (0xfffffdc7) # 10
andi   x17, x21, -0xa5 # (0xffffff5b) # 11
xori    x2, x16, 0x29b # 12
srli    x4,  x5, 0x15 # 13
slti   x22, x18, 0x3dd # 14
slti    x4, x22, -0x317 # (0xfffffce9) # 15
slti   x10, x13, 0x1d6 # 16
or     x17, x13,  x3 # 17
or     x24, x15,  x2 # 18
sra     x6, x20, x15 # 19
andi    x7, x10, -0x5c7 # (0xfffffa39) # 20
blt    x12, x20, -0xf5c # (0xfffff0a4) # 21
addi   x23, x25, 0x367 # 22
slti   x14, x12, -0x56d # (0xfffffa93) # 23
sub    x27, x31, x22 # 24
lwu    x25, 392(x0) # 25

# EXPECTED
# x2: 0x29b
# x7: 0x1
# x10: 0x1
# x13: 0x1
# x17: 0x1
# x22: 0x1
# x23: 0x367
# x24: 0x29b
# x27: -0x1
