# Seed: 1276085201


# == filling regs == 

# == code == 
sltiu  x31, x18, -0x382 # (0xfffffc7e) # 1
slti   x25, x20, 0x3e1 # 2
addi    x0, x12, 0x2d # 3
addi   x14, x23, 0x72d # 4
sb      x3, 1949(x5) # 5
sll    x19, x13, x19 # 6
xor    x29, x11, x15 # 7
srl    x14, x12, x29 # 8
xori    x1, x17, 0x90 # 9
sh     x27, 1108(x17) # 10
sb     x22, 736(x1) # 11
andi   x22, x12, 0x3ba # 12
sub     x1, x27, x27 # 13
and    x31, x16, x29 # 14
andi   x27,  x2, 0x243 # 15
sd      x0, 389(x28) # 16
sltiu   x3,  x1, -0x2b2 # (0xfffffd4e) # 17
ori     x2, x31, -0x66c # (0xfffff994) # 18
srli    x8, x17, 0x9 # 19
sltu   x20,  x7, x16 # 20
and    x22, x26, x20 # 21
andi   x30, x19, 0x34c # 22
and    x13,  x5, x11 # 23
andi   x27,  x4, -0x6a0 # (0xfffff960) # 24
sub    x19, x14, x25 # 25

# EXPECTED
# x2: -0x66c
# x3: 0x1
# x19: -0x1
# x25: 0x1
