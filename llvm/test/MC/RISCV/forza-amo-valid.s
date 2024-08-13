# RUN: llvm-mc %s -triple=riscv64 -mattr=+xforza -riscv-no-aliases -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-ASM,CHECK-ASM-AND-OBJ %s
# RUN: llvm-mc -filetype=obj -triple=riscv64 -mattr=+xforza < %s \
# RUN:     | llvm-objdump --mattr=+xforza -M no-aliases -d -r - \
# RUN:     | FileCheck --check-prefix=CHECK-ASM-AND-OBJ %s
#
# RUN: not llvm-mc -triple riscv32 -mattr=+xforza < %s 2>&1 \
# RUN:     | FileCheck -check-prefix=CHECK-RV32 %s

# CHECK-ASM-AND-OBJ: amo_r_add32.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0xa7,0x80,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: error: instruction requires the following: 'xforza' (TactCompLabs Forza instructions)
amo_r_add32.u a4, ra, s0
