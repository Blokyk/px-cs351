# Seed: 536411446


# == filling regs == 

# == code == 
slt    x19, x29,  x1 # 1
lhu    x17, 1445(x11) # 2
blt     x3, x17, -0x290 # (0xfffffd70) # 3
ori     x4,  x0, 0x2c8 # 4
srli   x11, x17, 0xf # 5
srli   x26, x21, 0x1b # 6
bltu   x24, x16, -0x510 # (0xfffffaf0) # 7
and    x25,  x3, x21 # 8
xor    x31,  x1, x25 # 9
srli    x2,  x8, 0x8 # 10
slti   x14, x31, -0x7a5 # (0xfffff85b) # 11
blt    x20, x13, -0xeb4 # (0xfffff14c) # 12
xori    x1, x25, -0x124 # (0xfffffedc) # 13
slti   x14, x26, -0x35e # (0xfffffca2) # 14
ori     x6, x19, -0x570 # (0xfffffa90) # 15
srl    x10,  x6, x10 # 16
and    x28, x21,  x1 # 17
slli   x21,  x4, 0x0 # 18
slli    x3, x22, 0x4 # 19
lhu    x20, 558(x13) # 20
srli   x25,  x1, 0x7 # 21
and     x6, x27, x15 # 22
xori   x20,  x8, -0x776 # (0xfffff88a) # 23
srli    x7,  x3, 0xc # 24
andi    x4, x29, -0x487 # (0xfffffb79) # 25

# EXPECTED
# x1: -0x124
# x10: -0x570
# x20: -0x776
# x21: 0x2c8
# x25: 0x1fffffffffffffd
