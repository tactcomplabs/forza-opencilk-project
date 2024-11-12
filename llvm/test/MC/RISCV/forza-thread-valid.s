# RUN: llvm-mc %s -triple=riscv64 -mattr=+xforza -riscv-no-aliases -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-ASM,CHECK-ASM-AND-OBJ %s
# RUN: llvm-mc -filetype=obj -triple=riscv64 -mattr=+xforza < %s \
# RUN:     | llvm-objdump --mattr=+xforza -M no-aliases --no-print-imm-hex -d -r - \
# RUN:     | FileCheck --check-prefix=CHECK-ASM-AND-OBJ %s
#
# RUN: not llvm-mc -triple riscv32 -mattr=+xforza < %s 2>&1 \
# RUN:     | FileCheck -check-prefix=CHECK-RV32 %s

# CHECK-ASM-AND-OBJ: quit zero, zero, 0
# CHECK-ASM: encoding: [0x2b,0x20,0x00,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
quit zero, zero, 0

# CHECK-ASM-AND-OBJ: quit zero, zero, 0
# CHECK-ASM: encoding: [0x2b,0x20,0x00,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
quit_thread

# CHECK-ASM-AND-OBJ: sendack a5, a2, 0
# CHECK-ASM: encoding: [0xab,0x47,0x06,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
sendack a5, a2, 0

# CHECK-ASM-AND-OBJ: spawn a4, ra, s0
# CHECK-ASM: encoding: [0x77,0x87,0x80,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
spawn a4, ra, s0

# CHECK-ASM-AND-OBJ: mcopy a0, 64(a2)
# CHECK-ASM: encoding: [0x23,0x40,0xa6,0x04]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
mcopy a0, 64(a2)
