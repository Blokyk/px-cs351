# Seed: 1852820017


# == filling regs == 

# == code == 
srai    x4, x28, 0x19 # 1
slti    x2,  x6, -0x6ad # (0xfffff953) # 2
add    x19,  x2, x13 # 3
andi   x30,  x1, 0x2b8 # 4
sub     x8,  x1, x14 # 5
sra     x6,  x9, x13 # 6
and    x29, x24, x13 # 7
srli   x16,  x6, 0x8 # 8
lb     x14, 424(x22) # 9
andi   x22, x21, -0x676 # (0xfffff98a) # 10
slli    x0, x27, 0x19 # 11
xori   x22,  x1, -0x166 # (0xfffffe9a) # 12
xori   x31, x14, -0x11d # (0xfffffee3) # 13
sltu    x2, x26, x10 # 14
slti    x1, x12, -0x2b7 # (0xfffffd49) # 15
addi   x23, x11, -0x550 # (0xfffffab0) # 16
lhu    x23, 861(x7) # 17
and    x16, x10, x17 # 18
bne     x4, x11, -0x2f8 # (0xfffffd08) # 19
ori    x17, x23, 0x3ea # 20
and    x22,  x7,  x2 # 21
slti    x3, x25, -0x363 # (0xfffffc9d) # 22
ori    x12,  x9, 0x445 # 23
blt    x15, x15, 0x12c # 24
slli   x27,  x6, 0x4 # 25

# EXPECTED
# x12: 0x445
# x17: 0x3ea
# x31: -0x11d
