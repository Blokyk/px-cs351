# Seed: 936075445


# == filling regs == 

# == code == 
sw      x7, 1925(x19) # 1
srai   x13, x17, 0x11 # 2
slti    x2, x23, -0x7cc # (0xfffff834) # 3
lh     x11, 335(x6) # 4
addi   x20, x15, 0x735 # 5
sra     x8, x17, x31 # 6
sltiu  x17, x16, 0x428 # 7
andi    x1,  x7, -0x411 # (0xfffffbef) # 8
add     x2, x19, x15 # 9
addi   x18, x26, -0x238 # (0xfffffdc8) # 10
sll    x20, x16, x26 # 11
lbu     x2, 1248(x8) # 12
srl     x5, x22, x31 # 13
addi   x25, x27, -0xf2 # (0xffffff0e) # 14
sd     x25, 1581(x5) # 15
srli    x1,  x7, 0x1f # 16
sra     x4,  x4,  x8 # 17
slli   x18, x15, 0x1b # 18
bne    x23,  x7, -0xec4 # (0xfffff13c) # 19
lbu    x13, 1673(x7) # 20
andi   x18, x10, -0x573 # (0xfffffa8d) # 21
sub    x13,  x5, x14 # 22
slt    x16, x25,  x8 # 23
sra    x17, x11,  x3 # 24
sltu   x12, x17, x27 # 25

# EXPECTED
# x16: 0x1
# x25: -0xf2
