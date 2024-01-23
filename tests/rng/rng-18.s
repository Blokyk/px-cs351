# Seed: 1666134008


# == filling regs == 

# == code == 
srl     x5, x26, x19 # 1
srli    x9, x31, 0x0 # 2
and     x0, x15,  x5 # 3
slti   x17, x27, -0x706 # (0xfffff8fa) # 4
or     x18, x13,  x1 # 5
srli   x30, x23, 0x1b # 6
srai   x20, x14, 0xc # 7
sltiu   x2,  x5, -0x23a # (0xfffffdc6) # 8
sltu   x23, x18,  x3 # 9
sra    x18, x10, x23 # 10
and     x0,  x9, x25 # 11
blt    x18,  x1, 0xfc # 12
slti   x31,  x3, -0x179 # (0xfffffe87) # 13
ori    x28,  x0, 0x287 # 14
slli    x9, x27, 0x1e # 15
sub     x3, x26, x22 # 16
xori   x19, x28, -0x111 # (0xfffffeef) # 17
xori   x26, x16, -0x7e0 # (0xfffff820) # 18
xor     x8, x25, x29 # 19
and    x23, x30,  x8 # 20
sub     x8,  x5, x11 # 21
ld     x17, 1451(x12) # 22
sw     x20, 1564(x21) # 23
ori    x23,  x7, -0x29a # (0xfffffd66) # 24
lw      x0, 1325(x10) # 25

# EXPECTED
# x2: 0x1
# x19: -0x398
# x23: -0x29a
# x26: -0x7e0
# x28: 0x287
