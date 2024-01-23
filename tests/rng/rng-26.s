# Seed: 1385336607


# == filling regs == 

# == code == 
addi   x30,  x3, -0x73 # (0xffffff8d) # 1
sltu   x30,  x1, x26 # 2
and     x8,  x8,  x7 # 3
addi    x7, x18, -0x1d8 # (0xfffffe28) # 4
sw     x23, 1040(x4) # 5
srai   x15, x30, 0x1f # 6
slli   x21, x27, 0x4 # 7
sltu   x22,  x9,  x3 # 8
andi    x0, x16, 0x44 # 9
sra    x16, x25,  x2 # 10
slli    x0, x29, 0xb # 11
srli    x0,  x9, 0x1b # 12
ori     x9,  x2, -0x18b # (0xfffffe75) # 13
xori   x18,  x8, 0x404 # 14
srl    x29,  x9,  x7 # 15
ori    x18, x28, -0x100 # (0xffffff00) # 16
sub    x11, x13, x18 # 17
addi   x20, x28, 0x5f8 # 18
sub    x10,  x8, x16 # 19
sb     x24, 591(x1) # 20
slli   x24, x26, 0x8 # 21
andi   x24, x30, 0x74 # 22
sub    x31,  x0,  x3 # 23
or      x6, x15,  x5 # 24
add     x4, x10,  x8 # 25

# EXPECTED
# x2: 0x4000
# x7: -0x1d8
# x9: -0x18b
# x11: 0x100
# x18: -0x100
# x20: 0x5f8
# x29: 0xfffffffffffffe
