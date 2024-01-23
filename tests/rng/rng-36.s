# Seed: 1822101303


# == filling regs == 

# == code == 
lb     x26, 218(x16) # 1
sra    x18,  x7, x22 # 2
slli    x4, x10, 0xe # 3
lh     x15, 1646(x19) # 4
ori    x29,  x6, 0x4e6 # 5
andi   x30, x20, 0x2c7 # 6
srai   x23, x25, 0x4 # 7
add    x26, x17,  x5 # 8
ori    x30,  x5, 0x206 # 9
sll     x7,  x6,  x9 # 10
or      x9, x31, x29 # 11
andi   x11,  x2, -0x7dc # (0xfffff824) # 12
bne    x24, x26, 0xcac # 13
slti   x24, x18, -0x6b3 # (0xfffff94d) # 14
ori    x22, x12, -0xe6 # (0xffffff1a) # 15
xor    x24, x29, x15 # 16
add    x16, x10, x21 # 17
ld     x18, 1843(x25) # 18
andi   x15, x20, -0x45 # (0xffffffbb) # 19
sltiu   x4, x18, 0x59e # 20
and     x9, x27, x22 # 21
andi   x10,  x4, -0xaa # (0xffffff56) # 22
xor    x31,  x1, x11 # 23
slt     x4, x15,  x8 # 24
sltiu  x17, x15, 0x58a # 25

# EXPECTED
# x2: 0x4000
# x11: 0x4000
# x17: 0x1
# x22: -0xe6
# x24: 0x4e6
# x29: 0x4e6
# x30: 0x206
# x31: 0x4000
