# RUN: llvm-mc %s -triple=riscv64 -mattr=+xforza -riscv-no-aliases -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-ASM,CHECK-ASM-AND-OBJ %s
# RUN: llvm-mc -filetype=obj -triple=riscv64 -mattr=+xforza < %s \
# RUN:     | llvm-objdump --mattr=+xforza -M no-aliases -d -r - \
# RUN:     | FileCheck --check-prefix=CHECK-ASM-AND-OBJ %s
#
# RUN: not llvm-mc -triple riscv32 -mattr=+xforza < %s 2>&1 \
# RUN:     | FileCheck -check-prefix=CHECK-RV32 %s

# CHECK-ASM-AND-OBJ: amo_r_add8.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add8.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add16.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add16.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add32.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add64.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add8.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x02]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add8.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add16.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x02]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add16.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add32.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x02]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add32.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add64.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x02]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add64.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add8.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x04]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add8.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add16.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x04]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add16.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add32.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x04]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add32.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add64.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x04]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add64.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add8.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x06]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add8.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add16.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x06]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add16.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add32.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x06]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add32.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add64.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x06]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add64.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add8.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x0a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add8.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add16.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x0a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add16.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add32.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x0a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add32.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add64.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x0a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add64.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add8.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x0c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add8.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add16.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x0c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add16.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add32.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x0c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add32.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add64.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x0c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add64.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add8.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x0e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add8.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add16.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x0e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add16.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add32.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x0e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add32.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add64.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x0e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_add64.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and8.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x20]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and8.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and16.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x20]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and16.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and32.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x20]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and64.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x20]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and8.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x22]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and8.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and16.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x22]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and16.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and32.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x22]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and32.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and64.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x22]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and64.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and8.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x24]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and8.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and16.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x24]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and16.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and32.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x24]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and32.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and64.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x24]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and64.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and8.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x26]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and8.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and16.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x26]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and16.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and32.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x26]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and32.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and64.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x26]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and64.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and8.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x2a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and8.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and16.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x2a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and16.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and32.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x2a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and32.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and64.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x2a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and64.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and8.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x2c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and8.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and16.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x2c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and16.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and32.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x2c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and32.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and64.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x2c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and64.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and8.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x2e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and8.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and16.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x2e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and16.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and32.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x2e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and32.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and64.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x2e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_and64.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or8.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x30]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or8.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or16.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x30]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or16.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or32.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x30]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or64.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x30]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or8.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x32]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or8.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or16.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x32]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or16.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or32.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x32]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or32.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or64.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x32]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or64.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or8.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x34]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or8.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or16.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x34]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or16.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or32.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x34]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or32.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or64.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x34]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or64.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or8.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x36]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or8.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or16.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x36]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or16.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or32.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x36]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or32.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or64.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x36]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or64.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or8.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x3a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or8.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or16.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x3a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or16.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or32.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x3a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or32.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or64.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x3a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or64.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or8.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x3c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or8.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or16.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x3c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or16.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or32.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x3c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or32.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or64.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x3c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or64.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or8.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x3e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or8.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or16.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x3e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or16.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or32.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x3e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or32.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or64.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x3e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_or64.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor8.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x40]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor8.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor16.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x40]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor16.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor32.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x40]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor64.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x40]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor8.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x42]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor8.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor16.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x42]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor16.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor32.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x42]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor32.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor64.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x42]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor64.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor8.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x44]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor8.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor16.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x44]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor16.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor32.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x44]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor32.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor64.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x44]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor64.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor8.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x46]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor8.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor16.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x46]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor16.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor32.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x46]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor32.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor64.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x46]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor64.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor8.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x4a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor8.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor16.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x4a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor16.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor32.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x4a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor32.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor64.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x4a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor64.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor8.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x4c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor8.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor16.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x4c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor16.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor32.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x4c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor32.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor64.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x4c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor64.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor8.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x4e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor8.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor16.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x4e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor16.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor32.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x4e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor32.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor64.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x4e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_xor64.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax8.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax8.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax16.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax16.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax32.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax64.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax8.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x52]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax8.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax16.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x52]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax16.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax32.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x52]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax32.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax64.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x52]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax64.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax8.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x54]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax8.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax16.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x54]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax16.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax32.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x54]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax32.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax64.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x54]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax64.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax8.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x56]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax8.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax16.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x56]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax16.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax32.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x56]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax32.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax64.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x56]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax64.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax8.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x5a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax8.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax16.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x5a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax16.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax32.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x5a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax32.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax64.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x5a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax64.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax8.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x5c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax8.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax16.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x5c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax16.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax32.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x5c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax32.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax64.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x5c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax64.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax8.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x5e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax8.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax16.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x5e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax16.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax32.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x5e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax32.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax64.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x5e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smax64.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax8.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x60]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax8.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax16.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x60]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax16.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax32.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x60]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax64.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x60]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax8.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x62]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax8.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax16.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x62]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax16.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax32.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x62]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax32.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax64.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x62]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax64.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax8.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x64]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax8.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax16.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x64]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax16.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax32.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x64]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax32.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax64.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x64]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax64.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax8.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x66]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax8.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax16.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x66]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax16.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax32.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x66]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax32.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax64.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x66]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax64.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax8.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x6a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax8.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax16.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x6a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax16.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax32.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x6a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax32.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax64.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x6a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax64.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax8.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x6c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax8.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax16.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x6c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax16.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax32.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x6c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax32.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax64.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x6c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax64.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax8.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x6e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax8.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax16.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x6e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax16.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax32.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x6e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax32.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax64.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x6e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umax64.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin8.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x70]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin8.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin16.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x70]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin16.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin32.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x70]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin64.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x70]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin8.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x72]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin8.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin16.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x72]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin16.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin32.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x72]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin32.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin64.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x72]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin64.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin8.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x74]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin8.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin16.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x74]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin16.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin32.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x74]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin32.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin64.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x74]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin64.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin8.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x76]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin8.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin16.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x76]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin16.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin32.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x76]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin32.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin64.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x76]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin64.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin8.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x7a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin8.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin16.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x7a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin16.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin32.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x7a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin32.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin64.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x7a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin64.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin8.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x7c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin8.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin16.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x7c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin16.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin32.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x7c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin32.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin64.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x7c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin64.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin8.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x7e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin8.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin16.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x7e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin16.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin32.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x7e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin32.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin64.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x7e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_smin64.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin8.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x80]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin8.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin16.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x80]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin16.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin32.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x80]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin64.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x80]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin8.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x82]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin8.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin16.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x82]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin16.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin32.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x82]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin32.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin64.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x82]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin64.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin8.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x84]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin8.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin16.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x84]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin16.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin32.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x84]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin32.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin64.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x84]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin64.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin8.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x86]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin8.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin16.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x86]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin16.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin32.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x86]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin32.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin64.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x86]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin64.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin8.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x8a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin8.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin16.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x8a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin16.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin32.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x8a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin32.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin64.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x8a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin64.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin8.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x8c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin8.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin16.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x8c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin16.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin32.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x8c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin32.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin64.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x8c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin64.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin8.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x8e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin8.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin16.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x8e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin16.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin32.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x8e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin32.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin64.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x8e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_umin64.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap8.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x90]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap8.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap16.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x90]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap16.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap32.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x90]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap64.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x90]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap8.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x92]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap8.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap16.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x92]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap16.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap32.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x92]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap32.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap64.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x92]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap64.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap8.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x94]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap8.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap16.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x94]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap16.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap32.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x94]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap32.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap64.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x94]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap64.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap8.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x96]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap8.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap16.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x96]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap16.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap32.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x96]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap32.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap64.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x96]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap64.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap8.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x9a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap8.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap16.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x9a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap16.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap32.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x9a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap32.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap64.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x9a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap64.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap8.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x9c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap8.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap16.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x9c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap16.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap32.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x9c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap32.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap64.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x9c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap64.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap8.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0x9e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap8.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap16.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x9e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap16.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap32.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x9e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap32.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap64.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0x9e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_swap64.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs8.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0xe0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs8.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs16.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0xe0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs16.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs32.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xe0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs64.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0xe0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs8.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0xe2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs8.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs16.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0xe2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs16.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs32.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xe2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs32.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs64.migr_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0xe2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs64.migr_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs8.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0xe4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs8.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs16.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0xe4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs16.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs32.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xe4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs32.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs64.migr_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0xe4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs64.migr_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs8.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0xe6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs8.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs16.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0xe6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs16.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs32.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xe6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs32.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs64.migr_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0xe6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs64.migr_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs8.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0xea]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs8.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs16.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0xea]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs16.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs32.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xea]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs32.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs64.rem_nn a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0xea]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs64.rem_nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs8.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0xec]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs8.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs16.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0xec]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs16.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs32.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xec]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs32.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs64.rem_on a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0xec]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs64.rem_on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs8.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xb7,0x80,0xee]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs8.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs16.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0xee]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs16.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs32.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xee]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs32.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_thrs64.rem_no a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x97,0x80,0xee]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_thrs64.rem_no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_fadd16.u ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0xa2,0x50,0xb0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fadd16.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fadd32.u ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xb0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fadd32.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fadd64.u ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x92,0x50,0xb0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fadd64.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fadd16.migr_nn ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0xa2,0x50,0xb2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fadd16.migr_nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fadd32.migr_nn ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xb2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fadd32.migr_nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fadd64.migr_nn ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x92,0x50,0xb2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fadd64.migr_nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fadd16.migr_on ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0xa2,0x50,0xb4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fadd16.migr_on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fadd32.migr_on ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xb4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fadd32.migr_on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fadd64.migr_on ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x92,0x50,0xb4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fadd64.migr_on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fadd16.migr_no ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0xa2,0x50,0xb6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fadd16.migr_no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fadd32.migr_no ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xb6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fadd32.migr_no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fadd64.migr_no ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x92,0x50,0xb6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fadd64.migr_no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub16.u ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0xa2,0x50,0xc0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsub16.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub32.u ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xc0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsub32.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub64.u ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x92,0x50,0xc0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsub64.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub16.migr_nn ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0xa2,0x50,0xc2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsub16.migr_nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub32.migr_nn ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xc2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsub32.migr_nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub64.migr_nn ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x92,0x50,0xc2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsub64.migr_nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub16.migr_on ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0xa2,0x50,0xc4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsub16.migr_on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub32.migr_on ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xc4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsub32.migr_on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub64.migr_on ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x92,0x50,0xc4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsub64.migr_on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub16.migr_no ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0xa2,0x50,0xc6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsub16.migr_no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub32.migr_no ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xc6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsub32.migr_no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub64.migr_no ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x92,0x50,0xc6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsub64.migr_no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr16.u ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0xa2,0x50,0xd0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsubr16.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr32.u ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xd0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsubr32.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr64.u ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x92,0x50,0xd0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsubr64.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr16.migr_nn ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0xa2,0x50,0xd2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsubr16.migr_nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr32.migr_nn ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xd2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsubr32.migr_nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr64.migr_nn ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x92,0x50,0xd2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsubr64.migr_nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr16.migr_on ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0xa2,0x50,0xd4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsubr16.migr_on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr32.migr_on ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xd4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsubr32.migr_on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr64.migr_on ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x92,0x50,0xd4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsubr64.migr_on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr16.migr_no ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0xa2,0x50,0xd6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsubr16.migr_no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr32.migr_no ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xd6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsubr32.migr_no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr64.migr_no ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x92,0x50,0xd6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
amo_r_fsubr64.migr_no ft4, ra, ft5
