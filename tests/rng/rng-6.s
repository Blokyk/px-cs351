# Seed: 1518400293


# == filling regs == 

# == code == 
andi   x29, x24, 0x7a1 # 1
slli    x6, x17, 0x4 # 2
add    x19, x10,  x1 # 3
srl    x24, x23,  x7 # 4
sltu   x13,  x7, x26 # 5
sub    x21,  x8,  x2 # 6
sltu    x2,  x7,  x4 # 7
slti   x10,  x7, -0x715 # (0xfffff8eb) # 8
or     x15,  x9,  x6 # 9
andi   x24,  x4, -0x347 # (0xfffffcb9) # 10
ld     x11, 210(x25) # 11
andi   x15, x31, -0x783 # (0xfffff87d) # 12
xori    x4, x14, 0x405 # 13
slti   x19, x23, -0x35 # (0xffffffcb) # 14
sltiu  x10,  x1, -0x561 # (0xfffffa9f) # 15
slli   x10,  x3, 0x7 # 16
andi   x25, x26, -0x2cb # (0xfffffd35) # 17
sh     x24, 1437(x15) # 18
sub    x15,  x7, x23 # 19
xor     x2,  x5,  x3 # 20
andi   x25,  x8, -0x3c2 # (0xfffffc3e) # 21
srli    x6, x29, 0x0 # 22
sltu   x25, x28,  x6 # 23
and     x2, x19,  x0 # 24
srli    x1, x15, 0xb # 25

# EXPECTED
# x4: 0x405
# x21: -0x4000
