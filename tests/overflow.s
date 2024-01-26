# overflow
not t0, zero # fill register with 1's
srli t0, t0, 1 # ignore sign bit
addi t0, t0, 1

# underflow
not t1, zero # fill register with 1's
srli t1, t1, 1 # drop first bit
not t1, t1 # register is now all 0's except MSB, which is 1, i.e. int64_min
addi t1, t1, -1

add t2, t0, t1

# EXPECTED
# sp:  0x4000
# t0: -9223372036854775808
# t1:  9223372036854775807
# t2: -1
