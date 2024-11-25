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

# CHECK-ASM-AND-OBJ: sendack a5, a2, a2
# CHECK-ASM: encoding: [0x8b,0x07,0xc6,0xa0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
sendack a5, a2, a2

# CHECK-ASM-AND-OBJ: spawn a4, ra, s0
# CHECK-ASM: encoding: [0x77,0x87,0x80,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
spawn a4, ra, s0

# CHECK-ASM-AND-OBJ: mcopy a0, a1, a2
# CHECK-ASM: encoding: [0x6b,0x00,0xb5,0x60]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
mcopy a0, a1, a2

# CHECK-ASM-AND-OBJ: rmac.ww a0, a1, a3
# CHECK-ASM: encoding: [0x3f,0x80,0xd5,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rmac.ww a0, a1, a3

# CHECK-ASM-AND-OBJ: rmac.wd a0, a1, a3
# CHECK-ASM: encoding: [0x3f,0x90,0xd5,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rmac.wd a0, a1, a3

# CHECK-ASM-AND-OBJ: rmac.dd a0, a1, a3
# CHECK-ASM: encoding: [0x3f,0xa0,0xd5,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rmac.dd a0, a1, a3

# CHECK-ASM-AND-OBJ: pzop.ii a0, a1, a2, 1
# CHECK-ASM: encoding: [0xeb,0x10,0xb5,0x60]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
pzop.ii a0, a1, a2, 1
