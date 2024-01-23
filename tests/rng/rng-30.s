# Seed: 1160911801


# == filling regs == 

# == code == 
lhu    x18, 1136(x26) # 1
andi   x21,  x5, 0x390 # 2
addi   x17, x22, -0x6ad # (0xfffff953) # 3
sub    x12, x21, x10 # 4
and    x21, x21, x31 # 5
slti    x3, x25, 0x5ec # 6
addi   x26, x22, 0x30c # 7
sw     x11, 819(x15) # 8
lw      x0, 1274(x0) # 9
srli    x2, x20, 0x14 # 10
slli    x2,  x2, 0xa # 11
sh      x4, 1055(x8) # 12
sltu    x2, x31, x25 # 13
sw     x16, 536(x18) # 14
add     x9, x26,  x5 # 15
lhu    x29, 399(x18) # 16
sub     x1, x25, x13 # 17
sltu   x23,  x4, x19 # 18
xor     x0, x27, x17 # 19
ori    x11,  x2, 0x16b # 20
addi   x24, x16, -0x56e # (0xfffffa92) # 21
sltiu   x1, x25, 0x7aa # 22
bgeu   x11, x17, 0xcbc # 23
srl    x25, x18,  x9 # 24
bge    x10, x22, 0x370 # 25

# EXPECTED
# x1: 0x1
# x3: 0x1
# x9: 0x30c
# x11: 0x16b
# x17: -0x6ad
# x24: -0x56e
# x26: 0x30c
