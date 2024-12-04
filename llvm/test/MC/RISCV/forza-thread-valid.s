# RUN: llvm-mc %s -triple=riscv64 -mattr=+xforza -riscv-no-aliases -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-ASM,CHECK-ASM-AND-OBJ %s
# RUN: llvm-mc -filetype=obj -triple=riscv64 -mattr=+xforza < %s \
# RUN:     | llvm-objdump --mattr=+xforza -M no-aliases --no-print-imm-hex -d -r - \
# RUN:     | FileCheck --check-prefix=CHECK-ASM-AND-OBJ %s
#
# RUN: not llvm-mc -triple riscv32 -mattr=+xforza < %s 2>&1 \
# RUN:     | FileCheck -check-prefix=CHECK-RV32 %s

# CHECK-ASM-AND-OBJ: quit
# CHECK-ASM: encoding: [0x2b,0x20,0x00,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
quit

# CHECK-ASM-AND-OBJ: resched
# CHECK-ASM: encoding: [0x2b,0x30,0x00,0x00]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
resched

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
# CHECK-ASM: encoding: [0x3f,0x00,0xb5,0x68]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rmac.ww a0, a1, a3

# CHECK-ASM-AND-OBJ: rmac.wd a0, a1, a3
# CHECK-ASM: encoding: [0x3f,0x10,0xb5,0x68]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rmac.wd a0, a1, a3

# CHECK-ASM-AND-OBJ: rmac.dd a0, a1, a3
# CHECK-ASM: encoding: [0x3f,0x20,0xb5,0x68]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rmac.dd a0, a1, a3

# CHECK-ASM-AND-OBJ: rfmac_bf.rne ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x30,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_bf.rne ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_bf.rtz ft0, ft1, a0
# CHECK-ASM: encoding: [0xbf,0x30,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_bf.rtz ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_bf.rdn ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x31,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_bf.rdn ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_bf.rup ft0, ft1, a0
# CHECK-ASM: encoding: [0xbf,0x31,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_bf.rup ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_bf.rmm ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x32,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_bf.rmm ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_bd.rne ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x40,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_bd.rne ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_bd.rtz ft0, ft1, a0
# CHECK-ASM: encoding: [0xbf,0x40,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_bd.rtz ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_bd.rdn ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x41,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_bd.rdn ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_bd.rup ft0, ft1, a0
# CHECK-ASM: encoding: [0xbf,0x41,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_bd.rup ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_bd.rmm ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x42,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_bd.rmm ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_ff.rne ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x50,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_ff.rne ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_ff.rtz ft0, ft1, a0
# CHECK-ASM: encoding: [0xbf,0x50,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_ff.rtz ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_ff.rdn ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x51,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_ff.rdn ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_ff.rup ft0, ft1, a0
# CHECK-ASM: encoding: [0xbf,0x51,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_ff.rup ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_ff.rmm ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x52,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_ff.rmm ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_fd.rne ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x60,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_fd.rne ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_fd.rtz ft0, ft1, a0
# CHECK-ASM: encoding: [0xbf,0x60,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_fd.rtz ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_fd.rdn ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x61,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_fd.rdn ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_fd.rup ft0, ft1, a0
# CHECK-ASM: encoding: [0xbf,0x61,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_fd.rup ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_fd.rmm ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x62,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_fd.rmm ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_dd.rne ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x70,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_dd.rne ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_dd.rtz ft0, ft1, a0
# CHECK-ASM: encoding: [0xbf,0x70,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_dd.rtz ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_dd.rdn ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x71,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_dd.rdn ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_dd.rup ft0, ft1, a0
# CHECK-ASM: encoding: [0xbf,0x71,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_dd.rup ft0, ft1, a0

# CHECK-ASM-AND-OBJ: rfmac_dd.rmm ft0, ft1, a0
# CHECK-ASM: encoding: [0x3f,0x72,0x10,0x50]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
rfmac_dd.rmm ft0, ft1, a0

# CHECK-ASM-AND-OBJ: pzop.ii a0, a1, a2, 1
# CHECK-ASM: encoding: [0xeb,0x10,0xb5,0x60]
# CHECK-RV32: :[[@LINE+1]]:1: error: instruction requires the following: RV64I Base Instruction Set
pzop.ii a0, a1, a2, 1
