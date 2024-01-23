# Seed: 1409082009


# == filling regs == 

# == code == 
sra    x18, x14, x15 # 1
srai    x9, x26, 0x2 # 2
sltiu  x19,  x7, -0x5bc # (0xfffffa44) # 3
sltu   x15, x22,  x5 # 4
sub    x29,  x4,  x5 # 5
slli    x5,  x8, 0x13 # 6
addi   x28, x25, 0x762 # 7
sltiu  x23, x27, -0x26d # (0xfffffd93) # 8
or      x1,  x4,  x5 # 9
sh     x18, 586(x11) # 10
xori    x8, x17, -0x744 # (0xfffff8bc) # 11
sltu   x26,  x1,  x2 # 12
and    x27, x16, x29 # 13
srli   x10,  x3, 0x1b # 14
sra    x22, x31, x31 # 15
slti   x31, x21, -0x1fa # (0xfffffe06) # 16
bne     x9, x15, -0xd10 # (0xfffff2f0) # 17
sltiu   x0, x23, 0x1a3 # 18
sltiu  x22, x25, 0x7a0 # 19
xori   x15, x27, -0x754 # (0xfffff8ac) # 20
sh      x2, 818(x20) # 21
slli   x19,  x5, 0x2 # 22
srai   x11,  x2, 0x0 # 23
srai    x2, x24, 0xf # 24
xor    x21, x26, x13 # 25

# EXPECTED
# x8: -0x744
# x11: 0x4000
# x15: -0x754
# x21: 0x1
# x22: 0x1
# x23: 0x1
# x26: 0x1
# x28: 0x762
