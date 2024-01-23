# Seed: 722045400


# == filling regs == 

# == code == 
sltiu  x22,  x1, -0x5ae # (0xfffffa52) # 1
and    x24,  x8, x24 # 2
slti   x22, x22, -0x2ca # (0xfffffd36) # 3
srli    x2, x21, 0x11 # 4
xori   x11, x21, -0x657 # (0xfffff9a9) # 5
slti   x13, x23, 0x279 # 6
sw     x11, 481(x1) # 7
xor    x16,  x3,  x0 # 8
srai   x10,  x9, 0x1b # 9
sra     x5, x11,  x5 # 10
sra    x10, x30, x15 # 11
sll    x22, x26, x31 # 12
xori   x30, x27, 0x663 # 13
slti   x28, x16, 0x5b # 14
and     x9, x29, x15 # 15
slti   x30, x20, -0x23b # (0xfffffdc5) # 16
slt    x24, x28,  x9 # 17
sh      x7, 504(x0) # 18
xori    x7,  x8, -0x181 # (0xfffffe7f) # 19
xor    x13,  x8, x29 # 20
slli    x7, x13, 0x1f # 21
xor    x29,  x9, x18 # 22
sltu   x21, x20, x27 # 23
sll    x10, x25, x22 # 24
lwu    x14, 1520(x27) # 25

# EXPECTED
# x5: -0x657
# x11: -0x657
# x28: 0x1
