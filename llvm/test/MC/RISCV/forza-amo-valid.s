# RUN: llvm-mc %s -triple=riscv64 -mattr=+xforza -riscv-no-aliases -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-ASM,CHECK-ASM-AND-OBJ %s
# RUN: llvm-mc -filetype=obj -triple=riscv64 -mattr=+xforza < %s \
# RUN:     | llvm-objdump --mattr=+xforza -M no-aliases -d -r - \
# RUN:     | FileCheck --check-prefix=CHECK-ASM-AND-OBJ %s
#
# RUN: not llvm-mc -triple riscv32 -mattr=+xforza < %s 2>&1 \
# RUN:     | FileCheck -check-prefix=CHECK-RV32 %s

# CHECK-ASM-AND-OBJ: amo_r_add32.u a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_add32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and32.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x10]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_and32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or32.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x20]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_or32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor32.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x30]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_xor32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax32.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x40]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smax32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax32.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umax32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin32.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x60]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smin32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin32.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x70]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umin32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap32.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x80]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_swap32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_cas032.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x90]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_cas032.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_fadd32.u  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xa0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fadd32.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub32.u  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xc0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsub32.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr32.u  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xd0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsubr32.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_thrs32.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xe0]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_thrs32.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add64.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x02]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_add64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and64.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x12]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_and64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or64.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x22]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_or64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor64.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x32]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_xor64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax64.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x42]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smax64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax64.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x52]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umax64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin64.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x62]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smin64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin64.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x72]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umin64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap64.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x82]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_swap64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_cas064.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x92]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_cas064.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_fadd64.u  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xa2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fadd64.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub64.u  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xc2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsub64.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr64.u  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xd2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsubr64.u ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_thrs64.u  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xe2]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_thrs64.u a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add32.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x04]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_add32.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and32.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x14]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_and32.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or32.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x24]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_or32.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor32.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x34]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_xor32.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax32.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x44]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smax32.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax32.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x54]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umax32.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin32.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x64]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smin32.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin32.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x74]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umin32.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap32.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x84]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_swap32.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_cas032.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x94]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_cas032.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_fadd32.nn  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xa4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fadd32.nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub32.nn  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xc4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsub32.nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr32.nn  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xd4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsubr32.nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_thrs32.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xe4]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_thrs32.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add64.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x06]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_add64.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and64.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x16]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_and64.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or64.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x26]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_or64.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor64.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x36]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_xor64.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax64.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x46]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smax64.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax64.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x56]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umax64.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin64.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x66]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smin64.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin64.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x76]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umin64.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap64.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x86]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_swap64.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_cas064.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x96]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_cas064.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_fadd64.nn  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xa6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fadd64.nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub64.nn  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xc6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsub64.nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr64.nn  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xd6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsubr64.nn ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_thrs64.nn  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xe6]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_thrs64.nn a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add32.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x08]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_add32.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and32.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x18]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_and32.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or32.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x28]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_or32.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor32.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x38]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_xor32.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax32.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x48]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smax32.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax32.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x58]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umax32.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin32.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x68]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smin32.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin32.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x78]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umin32.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap32.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x88]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_swap32.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_cas032.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x98]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_cas032.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_fadd32.no  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xa8]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fadd32.no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub32.no  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xc8]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsub32.no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr32.no  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xd8]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsubr32.no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_thrs32.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xe8]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_thrs32.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add64.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x0a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_add64.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and64.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x1a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_and64.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or64.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x2a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_or64.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor64.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x3a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_xor64.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax64.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x4a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smax64.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax64.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x5a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umax64.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin64.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x6a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smin64.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin64.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x7a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umin64.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap64.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x8a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_swap64.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_cas064.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x9a]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_cas064.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_fadd64.no  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xaa]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fadd64.no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub64.no  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xca]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsub64.no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr64.no  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xda]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsubr64.no ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_thrs64.no  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xea]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_thrs64.no a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add32.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x0c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_add32.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and32.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x1c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_and32.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or32.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x2c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_or32.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor32.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x3c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_xor32.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax32.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x4c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smax32.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax32.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x5c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umax32.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin32.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x6c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smin32.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin32.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x7c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umin32.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap32.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x8c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_swap32.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_cas032.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x9c]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_cas032.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_fadd32.on  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xac]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fadd32.on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub32.on  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xcc]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsub32.on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr32.on  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xdc]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsubr32.on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_thrs32.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xec]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_thrs32.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_add64.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x0e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_add64.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_and64.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x1e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_and64.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_or64.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x2e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_or64.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_xor64.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x3e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_xor64.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smax64.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x4e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smax64.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umax64.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x5e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umax64.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_smin64.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x6e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_smin64.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_umin64.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x7e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_umin64.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_swap64.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x8e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_swap64.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_cas064.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0x9e]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_cas064.on a4, ra, s0

# CHECK-ASM-AND-OBJ: amo_r_fadd64.on  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xae]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fadd64.on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsub64.on  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xce]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsub64.on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_fsubr64.on  ft4, ra, ft5
# CHECK-ASM: encoding: [0x0b,0x82,0x50,0xde]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_fsubr64.on ft4, ra, ft5

# CHECK-ASM-AND-OBJ: amo_r_thrs64.on  a4, ra, s0
# CHECK-ASM: encoding: [0x0b,0x87,0x80,0xee]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: FORZA Instruction Set
amo_r_thrs64.on a4, ra, s0
