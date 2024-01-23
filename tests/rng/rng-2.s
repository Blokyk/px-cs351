# Seed: 1775619420


# == filling regs == 

# == code == 
srai   x22, x26, 0x1d # 1
bltu   x31, x18, -0xd30 # (0xfffff2d0) # 2
srai   x22, x29, 0x13 # 3
srl    x22, x27,  x7 # 4
addi   x13, x29, -0x7e2 # (0xfffff81e) # 5
sh     x30, 504(x21) # 6
srai   x23, x19, 0x6 # 7
srli   x13, x23, 0x1a # 8
sll     x3,  x3,  x7 # 9
ori    x16,  x9, -0x5b9 # (0xfffffa47) # 10
srai   x31, x21, 0x4 # 11
xor    x25, x18,  x3 # 12
sra    x17,  x2, x15 # 13
sltu    x5, x20, x12 # 14
srai   x28, x24, 0x5 # 15
or     x11, x23,  x8 # 16
sub     x7, x19, x13 # 17
slti    x9,  x4, 0x3d5 # 18
add    x10, x21, x18 # 19
addi    x3,  x0, 0x735 # 20
add     x3, x29, x31 # 21
sra    x14, x26, x26 # 22
sw     x14, 1034(x9) # 23
srli    x7, x17, 0xc # 24
srli   x15, x14, 0x7 # 25

# EXPECTED
# x2: 0x4000
# x7: 0x4
# x9: 0x1
# x16: -0x5b9
# x17: 0x4000
