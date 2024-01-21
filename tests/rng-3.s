# Seed: 1122568193

addi   x28,  x0, 0x48a
addi   x23,  x0, 0x7e6
addi   x30,  x0, -0x36d
addi    x0,  x0, -0xa5
addi   x14,  x0, 0x43e
xori   x22,  x5, -0x359
sltiu  x14, x31, -0x78e
sd      x0, 464(x4)
lw     x14, 1413(x6)
xori   x10, x17, -0x5cd
ori     x8, x30, 0x611
xori    x9, x28, 0x317
ld      x4, 25(x14)
sra     x9, x27, x12
sltiu  x30, x26, -0x751

# EXPECTED
# x2: 16384
# x4: 224056521599168439
# x8: -365
# x10: -1485
# x22: -857
# x23: 2022
# x28: 1162
