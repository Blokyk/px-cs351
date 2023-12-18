// INSTR(format, name, opcode, f3, f7, operation)

#define X_REG(name, opcode, f3, f7, operation) \
    INSTR(REG, name, opcode, f3, f7, operation)

#define X_IMM(name, opcode, f3, operation) \
    INSTR(IMM, name, opcode, f3, 0x0, operation)

#define X_IMM2(name, opcode, f3, or_mask, operation) \
    INSTR(IMM, name, opcode, f3, or_mask, operation)

#define X_LOAD(name, opcode, f3, type) \
    INSTR(LOAD, name, opcode, f3, 0x0, rs1 = *(type*)mem(rs2 + imm))

#define X_STORE(name, opcode, f3, type) \
    INSTR(STORE, name, opcode, f3, 0x0, *(type*)mem(rbase + offset) = (type)rval)

#define X_BRANCH(name, opcode, f3, condition) \
    INSTR(BRANCH, name, opcode, f3, 0x0, branch(condition))

#define X_JUMP(name, opcode) \
    INSTR(JUMP, name, opcode, 0x0, 0x0, do { rd = pc + 4; pc += offset; } while(0))

#define X_PSEUDO(name, reg_count, imm_count, ...) \
    P_INSTR(name, reg_count, imm_count, ((instr_t)__VA_ARGS__))

#define X_REAL_INSTRS \
    X_REG(add,      0b0110011, 0x0, 0x00, rd = rs1 + rs2) \
    X_REG(sub,      0b0110011, 0x0, 0x20, rd = rs1 - rs2) \
    X_REG(xor,      0b0110011, 0x4, 0x00, rd = rs1 ^ rs2) \
    X_REG(or,       0b0110011, 0x6, 0x00, rd = rs1 | rs2) \
    X_REG(and,      0b0110011, 0x7, 0x00, rd = rs1 & rs2) \
    X_REG(sll,      0b0110011, 0x1, 0x00, rd = rs1 << rs2) \
    X_REG(srl,      0b0110011, 0x5, 0x00, rd = (uint64_t)rs1 >> rs2) \
    X_REG(sra,      0b0110011, 0x5, 0x20, rd = rs1 >> rs2) \
    X_REG(slt,      0b0110011, 0x2, 0x00, rd = (rs1 < rs2) ? 1 : 0) \
    X_REG(sltu,     0b0110011, 0x3, 0x00, rd = ((uint64_t)rs1 < (uint64_t)rs2) ? 1 : 0) \
    \
    X_IMM(addi,     0b0010011, 0x0, rd = rs + imm) \
    X_IMM(xori,     0b0010011, 0x4, rd = rs ^ imm) \
    X_IMM(ori,      0b0010011, 0x6, rd = rs | imm) \
    X_IMM(andi,     0b0010011, 0x7, rd = rs & imm) \
    X_IMM(slti,     0b0010011, 0x2, rd = (rs1 < imm) ? 1 : 0) \
    X_IMM(sltiu,    0b0010011, 0x3, rd = ((uint64_t)rs1 < (uint64_t)imm) ? 1 : 0) \
    \
    X_IMM2(slli,    0b0010011, 0x1, 0x00   , rd = rs & imm) \
    X_IMM2(srli,    0b0010011, 0x5, 0x00   , rd = rs & imm) \
    X_IMM2(srai,    0b0010011, 0x5, 0x20<<5, rd = rs & imm) \
    \
    X_LOAD(lb,      0b0000011, 0x0, int8_t) \
    X_LOAD(lh,      0b0000011, 0x1, int16_t) \
    X_LOAD(lw,      0b0000011, 0x2, int32_t) \
    X_LOAD(ld,      0b0000011, 0x3, int64_t) \
    X_LOAD(lbu,     0b0000011, 0x4, uint8_t) \
    X_LOAD(lhu,     0b0000011, 0x5, uint16_t) \
    \
    X_STORE(sb,     0b0100011, 0x0, int8_t) \
    X_STORE(sh,     0b0100011, 0x1, int16_t) \
    X_STORE(sw,     0b0100011, 0x2, int32_t) \
    X_STORE(sd,     0b0100011, 0x3, int64_t) \
    \
    X_BRANCH(beq,   0b1100011, 0x0, rs1 == rs2) \
    X_BRANCH(bne,   0b1100011, 0x1, rs1 != rs2) \
    X_BRANCH(blt,   0b1100011, 0x4, rs1 <  rs2) \
    X_BRANCH(bge,   0b1100011, 0x5, rs1 >= rs2) \
    X_BRANCH(bltu,  0b1100011, 0x6, (uint64_t)rs1 <  (uint64_t)rs2) \
    X_BRANCH(bgeu,  0b1100011, 0x7, (uint64_t)rs1 >= (uint64_t)rs2) \
    \
    X_JUMP(jal,     0b1101111) \
    X_IMM(jalr,     0b1100111, 0x0, do { rd = pc + 4; pc = rs1 + offset; } while(0)) \
    \
    X_IMM2(ecall,   0b1110011, 0x0, 0x0, ecall()) \
    X_IMM2(ebreak,   0b1110011, 0x0, 0x1, ebreak())

#define X_PSEUDO_INSTRS \
    X_PSEUDO(j,    0, 1,  { op_jal,  .as_jump = { .rd = 0, .offset = imms[0] }}) \
    X_PSEUDO(li,   1, 1,  { op_addi, .as_imm  = { .rd = regs[0], .rs = 0, .operand = imms[0] }}) \
    X_PSEUDO(mv,   2, 0,  { op_addi, .as_imm  = { .rd = regs[0], .rs = regs[1], .operand = 0 }}) \
    X_PSEUDO(call, 0, 1,  { op_jal,  .as_jump = { .rd = 1, .offset = imms[0] }}) \
    X_PSEUDO(ret,  0, 0,  { op_jalr, .as_imm  = { .rd = 0, .rs = 1, .operand = 0 }}) \
    X_PSEUDO(nop,  0, 0,  { op_addi, .as_imm  = { .rd = 0, .rs = 0, .operand = 0}}) \
    X_PSEUDO(not,  2, 0,  { op_xori, .as_imm  = { .rd = regs[0], .rs = regs[1], .operand = -1 }}) \
    X_PSEUDO(neg,  2, 0,  { op_sub,  .as_reg  = { .rd = regs[0], .rs1 = 0, .rs2 = regs[1] }})\

#define X_ALL_INSTRS\
    X_REAL_INSTRS\
    X_PSEUDO_INSTRS
