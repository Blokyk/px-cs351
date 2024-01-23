# Seed: 245069440


# == filling regs == 

# == code == 
slli   x14,  x3, 0x10 # 1
srai    x0, x26, 0x12 # 2
addi   x29, x28, 0x3e5 # 3
andi   x31, x12, -0x610 # (0xfffff9f0) # 4
sub    x18, x20,  x0 # 5
slti   x27,  x0, 0x530 # 6
or     x28, x29,  x6 # 7
slli    x7, x27, 0x12 # 8
slti    x2,  x7, -0x41b # (0xfffffbe5) # 9
sw     x10, 1043(x20) # 10
sub     x0, x12, x18 # 11
sra     x2, x21,  x7 # 12
srl    x20,  x6, x22 # 13
srai   x16,  x9, 0x12 # 14
sll    x24, x10, x24 # 15
slt     x4, x16, x31 # 16
ld     x12, 596(x23) # 17
addi    x4, x15, -0xf0 # (0xffffff10) # 18
sltu   x18, x23, x26 # 19
add    x27, x25,  x0 # 20
beq    x27,  x7, 0xcfc # 21
blt    x29,  x4, 0x4d0 # 22
sll    x14, x20, x12 # 23
sltiu   x5,  x2, 0x14c # 24
slli   x15, x17, 0x1e # 25

# EXPECTED
# x4: -0xf0
# x5: 0x1
# x7: 0x40000
# x28: 0x3e5
# x29: 0x3e5
