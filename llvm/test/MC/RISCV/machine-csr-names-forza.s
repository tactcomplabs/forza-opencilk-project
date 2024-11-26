# RUN: llvm-mc %s -triple=riscv64 -mcpu=forza -riscv-no-aliases -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-INST,CHECK-ENC %s
# RUN: llvm-mc -filetype=obj -triple riscv64 -mcpu=forza < %s \
# RUN:     | llvm-objdump -d - \
# RUN:     | FileCheck -check-prefix=CHECK-INST-ALIAS %s

#########################################
# FORZA Extension
#########################################

# tcb
# name
# CHECK-INST: csrrs t1, tcb, zero
# CHECK-ENC: encoding: [0x73,0x23,0x00,0x80]
# CHECK-INST-ALIAS: csrr t1, tcb
# uimm12
# CHECK-INST: csrrs t2, tcb, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x00,0x80]
# CHECK-INST-ALIAS: csrr t2, tcb
# name
csrrs t1, tcb, zero
# uimm12
csrrs t2, 0x800, zero

# urac
# name
# CHECK-INST: csrrs t1, urac, zero
# CHECK-ENC: encoding: [0x73,0x23,0x10,0x80]
# CHECK-INST-ALIAS: csrr t1, urac
# uimm12
# CHECK-INST: csrrs t2, urac, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x10,0x80]
# CHECK-INST-ALIAS: csrr t2, urac
# name
csrrs t1, urac, zero
# uimm12
csrrs t2, 0x801, zero

# upsched
# name
# CHECK-INST: csrrs t1, upsched, zero
# CHECK-ENC: encoding: [0x73,0x23,0x20,0x80]
# CHECK-INST-ALIAS: csrr t1, upsched
# uimm12
# CHECK-INST: csrrs t2, upsched, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x20,0x80]
# CHECK-INST-ALIAS: csrr t2, upsched
# name
csrrs t1, upsched, zero
# uimm12
csrrs t2, 0x802, zero

# memerr
# name
# CHECK-INST: csrrs t1, memerr, zero
# CHECK-ENC: encoding: [0x73,0x23,0x30,0x80]
# CHECK-INST-ALIAS: csrr t1, memerr
# uimm12
# CHECK-INST: csrrs t2, memerr, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x30,0x80]
# CHECK-INST-ALIAS: csrr t2, memerr
# name
csrrs t1, memerr, zero
# uimm12
csrrs t2, 0x803, zero

# zenstat
# name
# CHECK-INST: csrrs t1, zenstat, zero
# CHECK-ENC: encoding: [0x73,0x23,0x40,0x80]
# CHECK-INST-ALIAS: csrr t1, zenstat
# uimm12
# CHECK-INST: csrrs t2, zenstat, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x40,0x80]
# CHECK-INST-ALIAS: csrr t2, zenstat
# name
csrrs t1, zenstat, zero
# uimm12
csrrs t2, 0x804, zero

# zqmstat
# name
# CHECK-INST: csrrs t1, zqmstat, zero
# CHECK-ENC: encoding: [0x73,0x23,0x50,0x80]
# CHECK-INST-ALIAS: csrr t1, zqmstat
# uimm12
# CHECK-INST: csrrs t2, zqmstat, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x50,0x80]
# CHECK-INST-ALIAS: csrr t2, zqmstat
# name
csrrs t1, zqmstat, zero
# uimm12
csrrs t2, 0x805, zero

# zqmmboxreg
# name
# CHECK-INST: csrrs t1, zqmmboxreg, zero
# CHECK-ENC: encoding: [0x73,0x23,0x60,0x80]
# CHECK-INST-ALIAS: csrr t1, zqmmboxreg
# uimm12
# CHECK-INST: csrrs t2, zqmmboxreg, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x60,0x80]
# CHECK-INST-ALIAS: csrr t2, zqmmboxreg
# name
csrrs t1, zqmmboxreg, zero
# uimm12
csrrs t2, 0x806, zero

# zqmdq0
# name
# CHECK-INST: csrrs t1, zqmdq0, zero
# CHECK-ENC: encoding: [0x73,0x23,0x80,0x80]
# CHECK-INST-ALIAS: csrr t1, zqmdq0
# uimm12
# CHECK-INST: csrrs t2, zqmdq0, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x80,0x80]
# CHECK-INST-ALIAS: csrr t2, zqmdq0
# name
csrrs t1, zqmdq0, zero
# uimm12
csrrs t2, 0x808, zero

# zqmdq1
# name
# CHECK-INST: csrrs t1, zqmdq1, zero
# CHECK-ENC: encoding: [0x73,0x23,0x90,0x80]
# CHECK-INST-ALIAS: csrr t1, zqmdq1
# uimm12
# CHECK-INST: csrrs t2, zqmdq1, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x90,0x80]
# CHECK-INST-ALIAS: csrr t2, zqmdq1
# name
csrrs t1, zqmdq1, zero
# uimm12
csrrs t2, 0x809, zero

# zqmdq2
# name
# CHECK-INST: csrrs t1, zqmdq2, zero
# CHECK-ENC: encoding: [0x73,0x23,0xa0,0x80]
# CHECK-INST-ALIAS: csrr t1, zqmdq2
# uimm12
# CHECK-INST: csrrs t2, zqmdq2, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xa0,0x80]
# CHECK-INST-ALIAS: csrr t2, zqmdq2
# name
csrrs t1, zqmdq2, zero
# uimm12
csrrs t2, 0x80A, zero

# zqmdq3
# name
# CHECK-INST: csrrs t1, zqmdq3, zero
# CHECK-ENC: encoding: [0x73,0x23,0xb0,0x80]
# CHECK-INST-ALIAS: csrr t1, zqmdq3
# uimm12
# CHECK-INST: csrrs t2, zqmdq3, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xb0,0x80]
# CHECK-INST-ALIAS: csrr t2, zqmdq3
# name
csrrs t1, zqmdq3, zero
# uimm12
csrrs t2, 0x80B, zero

# zqmdq4
# name
# CHECK-INST: csrrs t1, zqmdq4, zero
# CHECK-ENC: encoding: [0x73,0x23,0xc0,0x80]
# CHECK-INST-ALIAS: csrr t1, zqmdq4
# uimm12
# CHECK-INST: csrrs t2, zqmdq4, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xc0,0x80]
# CHECK-INST-ALIAS: csrr t2, zqmdq4
# name
csrrs t1, zqmdq4, zero
# uimm12
csrrs t2, 0x80C, zero

# zqmdq5
# name
# CHECK-INST: csrrs t1, zqmdq5, zero
# CHECK-ENC: encoding: [0x73,0x23,0xd0,0x80]
# CHECK-INST-ALIAS: csrr t1, zqmdq5
# uimm12
# CHECK-INST: csrrs t2, zqmdq5, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xd0,0x80]
# CHECK-INST-ALIAS: csrr t2, zqmdq5
# name
csrrs t1, zqmdq5, zero
# uimm12
csrrs t2, 0x80D, zero

# zqmdq6
# name
# CHECK-INST: csrrs t1, zqmdq6, zero
# CHECK-ENC: encoding: [0x73,0x23,0xe0,0x80]
# CHECK-INST-ALIAS: csrr t1, zqmdq6
# uimm12
# CHECK-INST: csrrs t2, zqmdq6, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xe0,0x80]
# CHECK-INST-ALIAS: csrr t2, zqmdq6
# name
csrrs t1, zqmdq6, zero
# uimm12
csrrs t2, 0x80E, zero

# zqmdq7
# name
# CHECK-INST: csrrs t1, zqmdq7, zero
# CHECK-ENC: encoding: [0x73,0x23,0xf0,0x80]
# CHECK-INST-ALIAS: csrr t1, zqmdq7
# uimm12
# CHECK-INST: csrrs t2, zqmdq7, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xf0,0x80]
# CHECK-INST-ALIAS: csrr t2, zqmdq7
# name
csrrs t1, zqmdq7, zero
# uimm12
csrrs t2, 0x80F, zero

# uhls0
# name
# CHECK-INST: csrrs t1, uhls0, zero
# CHECK-ENC: encoding: [0x73,0x23,0x00,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls0
# uimm12
# CHECK-INST: csrrs t2, uhls0, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x00,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls0
# name
csrrs t1, uhls0, zero
# uimm12
csrrs t2, 0x820, zero

# uhls1
# name
# CHECK-INST: csrrs t1, uhls1, zero
# CHECK-ENC: encoding: [0x73,0x23,0x10,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls1
# uimm12
# CHECK-INST: csrrs t2, uhls1, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x10,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls1
# name
csrrs t1, uhls1, zero
# uimm12
csrrs t2, 0x821, zero

# uhls2
# name
# CHECK-INST: csrrs t1, uhls2, zero
# CHECK-ENC: encoding: [0x73,0x23,0x20,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls2
# uimm12
# CHECK-INST: csrrs t2, uhls2, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x20,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls2
# name
csrrs t1, uhls2, zero
# uimm12
csrrs t2, 0x822, zero

# uhls3
# name
# CHECK-INST: csrrs t1, uhls3, zero
# CHECK-ENC: encoding: [0x73,0x23,0x30,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls3
# uimm12
# CHECK-INST: csrrs t2, uhls3, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x30,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls3
# name
csrrs t1, uhls3, zero
# uimm12
csrrs t2, 0x823, zero

# uhls4
# name
# CHECK-INST: csrrs t1, uhls4, zero
# CHECK-ENC: encoding: [0x73,0x23,0x40,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls4
# uimm12
# CHECK-INST: csrrs t2, uhls4, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x40,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls4
# name
csrrs t1, uhls4, zero
# uimm12
csrrs t2, 0x824, zero

# uhls5
# name
# CHECK-INST: csrrs t1, uhls5, zero
# CHECK-ENC: encoding: [0x73,0x23,0x50,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls5
# uimm12
# CHECK-INST: csrrs t2, uhls5, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x50,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls5
# name
csrrs t1, uhls5, zero
# uimm12
csrrs t2, 0x825, zero

# uhls6
# name
# CHECK-INST: csrrs t1, uhls6, zero
# CHECK-ENC: encoding: [0x73,0x23,0x60,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls6
# uimm12
# CHECK-INST: csrrs t2, uhls6, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x60,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls6
# name
csrrs t1, uhls6, zero
# uimm12
csrrs t2, 0x826, zero

# uhls7
# name
# CHECK-INST: csrrs t1, uhls7, zero
# CHECK-ENC: encoding: [0x73,0x23,0x70,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls7
# uimm12
# CHECK-INST: csrrs t2, uhls7, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x70,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls7
# name
csrrs t1, uhls7, zero
# uimm12
csrrs t2, 0x827, zero

# uhls8
# name
# CHECK-INST: csrrs t1, uhls8, zero
# CHECK-ENC: encoding: [0x73,0x23,0x80,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls8
# uimm12
# CHECK-INST: csrrs t2, uhls8, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x80,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls8
# name
csrrs t1, uhls8, zero
# uimm12
csrrs t2, 0x828, zero

# uhls9
# name
# CHECK-INST: csrrs t1, uhls9, zero
# CHECK-ENC: encoding: [0x73,0x23,0x90,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls9
# uimm12
# CHECK-INST: csrrs t2, uhls9, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x90,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls9
# name
csrrs t1, uhls9, zero
# uimm12
csrrs t2, 0x829, zero

# uhls10
# name
# CHECK-INST: csrrs t1, uhls10, zero
# CHECK-ENC: encoding: [0x73,0x23,0xa0,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls10
# uimm12
# CHECK-INST: csrrs t2, uhls10, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xa0,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls10
# name
csrrs t1, uhls10, zero
# uimm12
csrrs t2, 0x82A, zero

# uhls11
# name
# CHECK-INST: csrrs t1, uhls11, zero
# CHECK-ENC: encoding: [0x73,0x23,0xb0,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls11
# uimm12
# CHECK-INST: csrrs t2, uhls11, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xb0,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls11
# name
csrrs t1, uhls11, zero
# uimm12
csrrs t2, 0x82B, zero

# uhls12
# name
# CHECK-INST: csrrs t1, uhls12, zero
# CHECK-ENC: encoding: [0x73,0x23,0xc0,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls12
# uimm12
# CHECK-INST: csrrs t2, uhls12, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xc0,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls12
# name
csrrs t1, uhls12, zero
# uimm12
csrrs t2, 0x82C, zero

# uhls13
# name
# CHECK-INST: csrrs t1, uhls13, zero
# CHECK-ENC: encoding: [0x73,0x23,0xd0,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls13
# uimm12
# CHECK-INST: csrrs t2, uhls13, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xd0,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls13
# name
csrrs t1, uhls13, zero
# uimm12
csrrs t2, 0x82D, zero

# uhls14
# name
# CHECK-INST: csrrs t1, uhls14, zero
# CHECK-ENC: encoding: [0x73,0x23,0xe0,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls14
# uimm12
# CHECK-INST: csrrs t2, uhls14, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xe0,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls14
# name
csrrs t1, uhls14, zero
# uimm12
csrrs t2, 0x82E, zero

# uhls15
# name
# CHECK-INST: csrrs t1, uhls15, zero
# CHECK-ENC: encoding: [0x73,0x23,0xf0,0x82]
# CHECK-INST-ALIAS: csrr t1, uhls15
# uimm12
# CHECK-INST: csrrs t2, uhls15, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xf0,0x82]
# CHECK-INST-ALIAS: csrr t2, uhls15
# name
csrrs t1, uhls15, zero
# uimm12
csrrs t2, 0x82f, zero

# uhls16
# name
# CHECK-INST: csrrs t1, uhls16, zero
# CHECK-ENC: encoding: [0x73,0x23,0x00,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls16
# uimm12
# CHECK-INST: csrrs t2, uhls16, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x00,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls16
# name
csrrs t1, uhls16, zero
# uimm12
csrrs t2, 0x830, zero

# uhls17
# name
# CHECK-INST: csrrs t1, uhls17, zero
# CHECK-ENC: encoding: [0x73,0x23,0x10,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls17
# uimm12
# CHECK-INST: csrrs t2, uhls17, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x10,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls17
# name
csrrs t1, uhls17, zero
# uimm12
csrrs t2, 0x831, zero

# uhls18
# name
# CHECK-INST: csrrs t1, uhls18, zero
# CHECK-ENC: encoding: [0x73,0x23,0x20,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls18
# uimm12
# CHECK-INST: csrrs t2, uhls18, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x20,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls18
# name
csrrs t1, uhls18, zero
# uimm12
csrrs t2, 0x832, zero

# uhls19
# name
# CHECK-INST: csrrs t1, uhls19, zero
# CHECK-ENC: encoding: [0x73,0x23,0x30,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls19
# uimm12
# CHECK-INST: csrrs t2, uhls19, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x30,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls19
# name
csrrs t1, uhls19, zero
# uimm12
csrrs t2, 0x833, zero

# uhls20
# name
# CHECK-INST: csrrs t1, uhls20, zero
# CHECK-ENC: encoding: [0x73,0x23,0x40,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls20
# uimm12
# CHECK-INST: csrrs t2, uhls20, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x40,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls20
# name
csrrs t1, uhls20, zero
# uimm12
csrrs t2, 0x834, zero

# uhls21
# name
# CHECK-INST: csrrs t1, uhls21, zero
# CHECK-ENC: encoding: [0x73,0x23,0x50,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls21
# uimm12
# CHECK-INST: csrrs t2, uhls21, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x50,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls21
# name
csrrs t1, uhls21, zero
# uimm12
csrrs t2, 0x835, zero

# uhls22
# name
# CHECK-INST: csrrs t1, uhls22, zero
# CHECK-ENC: encoding: [0x73,0x23,0x60,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls22
# uimm12
# CHECK-INST: csrrs t2, uhls22, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x60,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls22
# name
csrrs t1, uhls22, zero
# uimm12
csrrs t2, 0x836, zero

# uhls23
# name
# CHECK-INST: csrrs t1, uhls23, zero
# CHECK-ENC: encoding: [0x73,0x23,0x70,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls23
# uimm12
# CHECK-INST: csrrs t2, uhls23, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x70,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls23
# name
csrrs t1, uhls23, zero
# uimm12
csrrs t2, 0x837, zero

# uhls24
# name
# CHECK-INST: csrrs t1, uhls24, zero
# CHECK-ENC: encoding: [0x73,0x23,0x80,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls24
# uimm12
# CHECK-INST: csrrs t2, uhls24, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x80,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls24
# name
csrrs t1, uhls24, zero
# uimm12
csrrs t2, 0x838, zero

# uhls25
# name
# CHECK-INST: csrrs t1, uhls25, zero
# CHECK-ENC: encoding: [0x73,0x23,0x90,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls25
# uimm12
# CHECK-INST: csrrs t2, uhls25, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x90,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls25
# name
csrrs t1, uhls25, zero
# uimm12
csrrs t2, 0x839, zero

# uhls26
# name
# CHECK-INST: csrrs t1, uhls26, zero
# CHECK-ENC: encoding: [0x73,0x23,0xa0,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls26
# uimm12
# CHECK-INST: csrrs t2, uhls26, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xa0,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls26
# name
csrrs t1, uhls26, zero
# uimm12
csrrs t2, 0x83A, zero

# uhls27
# name
# CHECK-INST: csrrs t1, uhls27, zero
# CHECK-ENC: encoding: [0x73,0x23,0xb0,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls27
# uimm12
# CHECK-INST: csrrs t2, uhls27, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xb0,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls27
# name
csrrs t1, uhls27, zero
# uimm12
csrrs t2, 0x83B, zero

# uhls28
# name
# CHECK-INST: csrrs t1, uhls28, zero
# CHECK-ENC: encoding: [0x73,0x23,0xc0,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls28
# uimm12
# CHECK-INST: csrrs t2, uhls28, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xc0,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls28
# name
csrrs t1, uhls28, zero
# uimm12
csrrs t2, 0x83C, zero

# uhls29
# name
# CHECK-INST: csrrs t1, uhls29, zero
# CHECK-ENC: encoding: [0x73,0x23,0xd0,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls29
# uimm12
# CHECK-INST: csrrs t2, uhls29, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xd0,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls29
# name
csrrs t1, uhls29, zero
# uimm12
csrrs t2, 0x83D, zero

# uhls30
# name
# CHECK-INST: csrrs t1, uhls30, zero
# CHECK-ENC: encoding: [0x73,0x23,0xe0,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls30
# uimm12
# CHECK-INST: csrrs t2, uhls30, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xe0,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls30
# name
csrrs t1, uhls30, zero
# uimm12
csrrs t2, 0x83E, zero

# uhls31
# name
# CHECK-INST: csrrs t1, uhls31, zero
# CHECK-ENC: encoding: [0x73,0x23,0xf0,0x83]
# CHECK-INST-ALIAS: csrr t1, uhls31
# uimm12
# CHECK-INST: csrrs t2, uhls31, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xf0,0x83]
# CHECK-INST-ALIAS: csrr t2, uhls31
# name
csrrs t1, uhls31, zero
# uimm12
csrrs t2, 0x83F, zero

# zeneqc
# name
# CHECK-INST: csrrs t1, zeneqc, zero
# CHECK-ENC: encoding: [0x73,0x23,0x00,0x84]
# CHECK-INST-ALIAS: csrr t1, zeneqc
# uimm12
# CHECK-INST: csrrs t2, zeneqc, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x00,0x84]
# CHECK-INST-ALIAS: csrr t2, zeneqc
# name
csrrs t1, zeneqc, zero
# uimm12
csrrs t2, 0x840, zero

# zeneqd
# name
# CHECK-INST: csrrs t1, zeneqd, zero
# CHECK-ENC: encoding: [0x73,0x23,0x10,0x84]
# CHECK-INST-ALIAS: csrr t1, zeneqd
# uimm12
# CHECK-INST: csrrs t2, zeneqd, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x10,0x84]
# CHECK-INST-ALIAS: csrr t2, zeneqd
# name
csrrs t1, zeneqd, zero
# uimm12
csrrs t2, 0x841, zero

# zeneqs
# name
# CHECK-INST: csrrs t1, zeneqs, zero
# CHECK-ENC: encoding: [0x73,0x23,0x20,0x84]
# CHECK-INST-ALIAS: csrr t1, zeneqs
# uimm12
# CHECK-INST: csrrs t2, zeneqs, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x20,0x84]
# CHECK-INST-ALIAS: csrr t2, zeneqs
# name
csrrs t1, zeneqs, zero
# uimm12
csrrs t2, 0x842, zero

# zeneqp
# name
# CHECK-INST: csrrs t1, zeneqp, zero
# CHECK-ENC: encoding: [0x73,0x23,0x30,0x84]
# CHECK-INST-ALIAS: csrr t1, zeneqp
# uimm12
# CHECK-INST: csrrs t2, zeneqp, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x30,0x84]
# CHECK-INST-ALIAS: csrr t2, zeneqp
# name
csrrs t1, zeneqp, zero
# uimm12
csrrs t2, 0x843, zero

# fencestat
# name
# CHECK-INST: csrrs t1, fencestat, zero
# CHECK-ENC: encoding: [0x73,0x23,0x00,0x86]
# CHECK-INST-ALIAS: csrr t1, fencestat
# uimm12
# CHECK-INST: csrrs t2, fencestat, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x00,0x86]
# CHECK-INST-ALIAS: csrr t2, fencestat
# name
csrrs t1, fencestat, zero
# uimm12
csrrs t2, 0x860, zero

# ustatus
# name
# CHECK-INST: csrrs t1, ustatus, zero
# CHECK-ENC: encoding: [0x73,0x23,0x00,0x88]
# CHECK-INST-ALIAS: csrr t1, ustatus
# uimm12
# CHECK-INST: csrrs t2, ustatus, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x00,0x88]
# CHECK-INST-ALIAS: csrr t2, ustatus
# name
csrrs t1, ustatus, zero
# uimm12
csrrs t2, 0x880, zero

# srac
# name
# CHECK-INST: csrrs t1, srac, zero
# CHECK-ENC: encoding: [0x73,0x23,0x00,0x90]
# CHECK-INST-ALIAS: csrr t1, srac
# uimm12
# CHECK-INST: csrrs t2, srac, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x00,0x90]
# CHECK-INST-ALIAS: csrr t2, srac
# name
csrrs t1, srac, zero
# uimm12
csrrs t2, 0x900, zero

# spsched
# name
# CHECK-INST: csrrs t1, spsched, zero
# CHECK-ENC: encoding: [0x73,0x23,0x10,0x90]
# CHECK-INST-ALIAS: csrr t1, spsched
# uimm12
# CHECK-INST: csrrs t2, spsched, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x10,0x90]
# CHECK-INST-ALIAS: csrr t2, spsched
# name
csrrs t1, spsched, zero
# uimm12
csrrs t2, 0x901, zero

# pzop_base
# name
# CHECK-INST: csrrs t1, pzop_base, zero
# CHECK-ENC: encoding: [0x73,0x23,0x20,0x90]
# CHECK-INST-ALIAS: csrr t1, pzop_base
# uimm12
# CHECK-INST: csrrs t2, pzop_base, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x20,0x90]
# CHECK-INST-ALIAS: csrr t2, pzop_base
# name
csrrs t1, pzop_base, zero
# uimm12
csrrs t2, 0x902, zero

# shls0
# name
# CHECK-INST: csrrs t1, shls0, zero
# CHECK-ENC: encoding: [0x73,0x23,0x00,0x92]
# CHECK-INST-ALIAS: csrr t1, shls0
# uimm12
# CHECK-INST: csrrs t2, shls0, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x00,0x92]
# CHECK-INST-ALIAS: csrr t2, shls0
# name
csrrs t1, shls0, zero
# uimm12
csrrs t2, 0x920, zero

# shls1
# name
# CHECK-INST: csrrs t1, shls1, zero
# CHECK-ENC: encoding: [0x73,0x23,0x10,0x92]
# CHECK-INST-ALIAS: csrr t1, shls1
# uimm12
# CHECK-INST: csrrs t2, shls1, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x10,0x92]
# CHECK-INST-ALIAS: csrr t2, shls1
# name
csrrs t1, shls1, zero
# uimm12
csrrs t2, 0x921, zero

# shls2
# name
# CHECK-INST: csrrs t1, shls2, zero
# CHECK-ENC: encoding: [0x73,0x23,0x20,0x92]
# CHECK-INST-ALIAS: csrr t1, shls2
# uimm12
# CHECK-INST: csrrs t2, shls2, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x20,0x92]
# CHECK-INST-ALIAS: csrr t2, shls2
# name
csrrs t1, shls2, zero
# uimm12
csrrs t2, 0x922, zero

# shls3
# name
# CHECK-INST: csrrs t1, shls3, zero
# CHECK-ENC: encoding: [0x73,0x23,0x30,0x92]
# CHECK-INST-ALIAS: csrr t1, shls3
# uimm12
# CHECK-INST: csrrs t2, shls3, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x30,0x92]
# CHECK-INST-ALIAS: csrr t2, shls3
# name
csrrs t1, shls3, zero
# uimm12
csrrs t2, 0x923, zero

# shls4
# name
# CHECK-INST: csrrs t1, shls4, zero
# CHECK-ENC: encoding: [0x73,0x23,0x40,0x92]
# CHECK-INST-ALIAS: csrr t1, shls4
# uimm12
# CHECK-INST: csrrs t2, shls4, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x40,0x92]
# CHECK-INST-ALIAS: csrr t2, shls4
# name
csrrs t1, shls4, zero
# uimm12
csrrs t2, 0x924, zero

# shls5
# name
# CHECK-INST: csrrs t1, shls5, zero
# CHECK-ENC: encoding: [0x73,0x23,0x50,0x92]
# CHECK-INST-ALIAS: csrr t1, shls5
# uimm12
# CHECK-INST: csrrs t2, shls5, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x50,0x92]
# CHECK-INST-ALIAS: csrr t2, shls5
# name
csrrs t1, shls5, zero
# uimm12
csrrs t2, 0x925, zero

# shls6
# name
# CHECK-INST: csrrs t1, shls6, zero
# CHECK-ENC: encoding: [0x73,0x23,0x60,0x92]
# CHECK-INST-ALIAS: csrr t1, shls6
# uimm12
# CHECK-INST: csrrs t2, shls6, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x60,0x92]
# CHECK-INST-ALIAS: csrr t2, shls6
# name
csrrs t1, shls6, zero
# uimm12
csrrs t2, 0x926, zero

# shls7
# name
# CHECK-INST: csrrs t1, shls7, zero
# CHECK-ENC: encoding: [0x73,0x23,0x70,0x92]
# CHECK-INST-ALIAS: csrr t1, shls7
# uimm12
# CHECK-INST: csrrs t2, shls7, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x70,0x92]
# CHECK-INST-ALIAS: csrr t2, shls7
# name
csrrs t1, shls7, zero
# uimm12
csrrs t2, 0x927, zero

# shls8
# name
# CHECK-INST: csrrs t1, shls8, zero
# CHECK-ENC: encoding: [0x73,0x23,0x80,0x92]
# CHECK-INST-ALIAS: csrr t1, shls8
# uimm12
# CHECK-INST: csrrs t2, shls8, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x80,0x92]
# CHECK-INST-ALIAS: csrr t2, shls8
# name
csrrs t1, shls8, zero
# uimm12
csrrs t2, 0x928, zero

# shls9
# name
# CHECK-INST: csrrs t1, shls9, zero
# CHECK-ENC: encoding: [0x73,0x23,0x90,0x92]
# CHECK-INST-ALIAS: csrr t1, shls9
# uimm12
# CHECK-INST: csrrs t2, shls9, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x90,0x92]
# CHECK-INST-ALIAS: csrr t2, shls9
# name
csrrs t1, shls9, zero
# uimm12
csrrs t2, 0x929, zero

# shls10
# name
# CHECK-INST: csrrs t1, shls10, zero
# CHECK-ENC: encoding: [0x73,0x23,0xa0,0x92]
# CHECK-INST-ALIAS: csrr t1, shls10
# uimm12
# CHECK-INST: csrrs t2, shls10, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xa0,0x92]
# CHECK-INST-ALIAS: csrr t2, shls10
# name
csrrs t1, shls10, zero
# uimm12
csrrs t2, 0x92A, zero

# shls11
# name
# CHECK-INST: csrrs t1, shls11, zero
# CHECK-ENC: encoding: [0x73,0x23,0xb0,0x92]
# CHECK-INST-ALIAS: csrr t1, shls11
# uimm12
# CHECK-INST: csrrs t2, shls11, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xb0,0x92]
# CHECK-INST-ALIAS: csrr t2, shls11
# name
csrrs t1, shls11, zero
# uimm12
csrrs t2, 0x92B, zero

# shls12
# name
# CHECK-INST: csrrs t1, shls12, zero
# CHECK-ENC: encoding: [0x73,0x23,0xc0,0x92]
# CHECK-INST-ALIAS: csrr t1, shls12
# uimm12
# CHECK-INST: csrrs t2, shls12, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xc0,0x92]
# CHECK-INST-ALIAS: csrr t2, shls12
# name
csrrs t1, shls12, zero
# uimm12
csrrs t2, 0x92C, zero

# shls13
# name
# CHECK-INST: csrrs t1, shls13, zero
# CHECK-ENC: encoding: [0x73,0x23,0xd0,0x92]
# CHECK-INST-ALIAS: csrr t1, shls13
# uimm12
# CHECK-INST: csrrs t2, shls13, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xd0,0x92]
# CHECK-INST-ALIAS: csrr t2, shls13
# name
csrrs t1, shls13, zero
# uimm12
csrrs t2, 0x92D, zero

# shls14
# name
# CHECK-INST: csrrs t1, shls14, zero
# CHECK-ENC: encoding: [0x73,0x23,0xe0,0x92]
# CHECK-INST-ALIAS: csrr t1, shls14
# uimm12
# CHECK-INST: csrrs t2, shls14, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xe0,0x92]
# CHECK-INST-ALIAS: csrr t2, shls14
# name
csrrs t1, shls14, zero
# uimm12
csrrs t2, 0x92E, zero

# shls15
# name
# CHECK-INST: csrrs t1, shls15, zero
# CHECK-ENC: encoding: [0x73,0x23,0xf0,0x92]
# CHECK-INST-ALIAS: csrr t1, shls15
# uimm12
# CHECK-INST: csrrs t2, shls15, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xf0,0x92]
# CHECK-INST-ALIAS: csrr t2, shls15
# name
csrrs t1, shls15, zero
# uimm12
csrrs t2, 0x92f, zero

# shls16
# name
# CHECK-INST: csrrs t1, shls16, zero
# CHECK-ENC: encoding: [0x73,0x23,0x00,0x93]
# CHECK-INST-ALIAS: csrr t1, shls16
# uimm12
# CHECK-INST: csrrs t2, shls16, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x00,0x93]
# CHECK-INST-ALIAS: csrr t2, shls16
# name
csrrs t1, shls16, zero
# uimm12
csrrs t2, 0x930, zero

# shls17
# name
# CHECK-INST: csrrs t1, shls17, zero
# CHECK-ENC: encoding: [0x73,0x23,0x10,0x93]
# CHECK-INST-ALIAS: csrr t1, shls17
# uimm12
# CHECK-INST: csrrs t2, shls17, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x10,0x93]
# CHECK-INST-ALIAS: csrr t2, shls17
# name
csrrs t1, shls17, zero
# uimm12
csrrs t2, 0x931, zero

# shls18
# name
# CHECK-INST: csrrs t1, shls18, zero
# CHECK-ENC: encoding: [0x73,0x23,0x20,0x93]
# CHECK-INST-ALIAS: csrr t1, shls18
# uimm12
# CHECK-INST: csrrs t2, shls18, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x20,0x93]
# CHECK-INST-ALIAS: csrr t2, shls18
# name
csrrs t1, shls18, zero
# uimm12
csrrs t2, 0x932, zero

# shls19
# name
# CHECK-INST: csrrs t1, shls19, zero
# CHECK-ENC: encoding: [0x73,0x23,0x30,0x93]
# CHECK-INST-ALIAS: csrr t1, shls19
# uimm12
# CHECK-INST: csrrs t2, shls19, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x30,0x93]
# CHECK-INST-ALIAS: csrr t2, shls19
# name
csrrs t1, shls19, zero
# uimm12
csrrs t2, 0x933, zero

# shls20
# name
# CHECK-INST: csrrs t1, shls20, zero
# CHECK-ENC: encoding: [0x73,0x23,0x40,0x93]
# CHECK-INST-ALIAS: csrr t1, shls20
# uimm12
# CHECK-INST: csrrs t2, shls20, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x40,0x93]
# CHECK-INST-ALIAS: csrr t2, shls20
# name
csrrs t1, shls20, zero
# uimm12
csrrs t2, 0x934, zero

# shls21
# name
# CHECK-INST: csrrs t1, shls21, zero
# CHECK-ENC: encoding: [0x73,0x23,0x50,0x93]
# CHECK-INST-ALIAS: csrr t1, shls21
# uimm12
# CHECK-INST: csrrs t2, shls21, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x50,0x93]
# CHECK-INST-ALIAS: csrr t2, shls21
# name
csrrs t1, shls21, zero
# uimm12
csrrs t2, 0x935, zero

# shls22
# name
# CHECK-INST: csrrs t1, shls22, zero
# CHECK-ENC: encoding: [0x73,0x23,0x60,0x93]
# CHECK-INST-ALIAS: csrr t1, shls22
# uimm12
# CHECK-INST: csrrs t2, shls22, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x60,0x93]
# CHECK-INST-ALIAS: csrr t2, shls22
# name
csrrs t1, shls22, zero
# uimm12
csrrs t2, 0x936, zero

# shls23
# name
# CHECK-INST: csrrs t1, shls23, zero
# CHECK-ENC: encoding: [0x73,0x23,0x70,0x93]
# CHECK-INST-ALIAS: csrr t1, shls23
# uimm12
# CHECK-INST: csrrs t2, shls23, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x70,0x93]
# CHECK-INST-ALIAS: csrr t2, shls23
# name
csrrs t1, shls23, zero
# uimm12
csrrs t2, 0x937, zero

# shls24
# name
# CHECK-INST: csrrs t1, shls24, zero
# CHECK-ENC: encoding: [0x73,0x23,0x80,0x93]
# CHECK-INST-ALIAS: csrr t1, shls24
# uimm12
# CHECK-INST: csrrs t2, shls24, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x80,0x93]
# CHECK-INST-ALIAS: csrr t2, shls24
# name
csrrs t1, shls24, zero
# uimm12
csrrs t2, 0x938, zero

# shls25
# name
# CHECK-INST: csrrs t1, shls25, zero
# CHECK-ENC: encoding: [0x73,0x23,0x90,0x93]
# CHECK-INST-ALIAS: csrr t1, shls25
# uimm12
# CHECK-INST: csrrs t2, shls25, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x90,0x93]
# CHECK-INST-ALIAS: csrr t2, shls25
# name
csrrs t1, shls25, zero
# uimm12
csrrs t2, 0x939, zero

# shls26
# name
# CHECK-INST: csrrs t1, shls26, zero
# CHECK-ENC: encoding: [0x73,0x23,0xa0,0x93]
# CHECK-INST-ALIAS: csrr t1, shls26
# uimm12
# CHECK-INST: csrrs t2, shls26, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xa0,0x93]
# CHECK-INST-ALIAS: csrr t2, shls26
# name
csrrs t1, shls26, zero
# uimm12
csrrs t2, 0x93A, zero

# shls27
# name
# CHECK-INST: csrrs t1, shls27, zero
# CHECK-ENC: encoding: [0x73,0x23,0xb0,0x93]
# CHECK-INST-ALIAS: csrr t1, shls27
# uimm12
# CHECK-INST: csrrs t2, shls27, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xb0,0x93]
# CHECK-INST-ALIAS: csrr t2, shls27
# name
csrrs t1, shls27, zero
# uimm12
csrrs t2, 0x93B, zero

# shls28
# name
# CHECK-INST: csrrs t1, shls28, zero
# CHECK-ENC: encoding: [0x73,0x23,0xc0,0x93]
# CHECK-INST-ALIAS: csrr t1, shls28
# uimm12
# CHECK-INST: csrrs t2, shls28, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xc0,0x93]
# CHECK-INST-ALIAS: csrr t2, shls28
# name
csrrs t1, shls28, zero
# uimm12
csrrs t2, 0x93C, zero

# shls29
# name
# CHECK-INST: csrrs t1, shls29, zero
# CHECK-ENC: encoding: [0x73,0x23,0xd0,0x93]
# CHECK-INST-ALIAS: csrr t1, shls29
# uimm12
# CHECK-INST: csrrs t2, shls29, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xd0,0x93]
# CHECK-INST-ALIAS: csrr t2, shls29
# name
csrrs t1, shls29, zero
# uimm12
csrrs t2, 0x93D, zero

# shls30
# name
# CHECK-INST: csrrs t1, shls30, zero
# CHECK-ENC: encoding: [0x73,0x23,0xe0,0x93]
# CHECK-INST-ALIAS: csrr t1, shls30
# uimm12
# CHECK-INST: csrrs t2, shls30, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xe0,0x93]
# CHECK-INST-ALIAS: csrr t2, shls30
# name
csrrs t1, shls30, zero
# uimm12
csrrs t2, 0x93E, zero

# shls31
# name
# CHECK-INST: csrrs t1, shls31, zero
# CHECK-ENC: encoding: [0x73,0x23,0xf0,0x93]
# CHECK-INST-ALIAS: csrr t1, shls31
# uimm12
# CHECK-INST: csrrs t2, shls31, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xf0,0x93]
# CHECK-INST-ALIAS: csrr t2, shls31
# name
csrrs t1, shls31, zero
# uimm12
csrrs t2, 0x93F, zero

# hartid
# name
# CHECK-INST: csrrs t1, hartid, zero
# CHECK-ENC: encoding: [0x73,0x23,0x00,0xcc]
# CHECK-INST-ALIAS: csrr t1, hartid
# uimm12
# CHECK-INST: csrrs t2, hartid, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x00,0xcc]
# CHECK-INST-ALIAS: csrr t2, hartid
# name
csrrs t1, hartid, zero
# uimm12
csrrs t2, 0xCC0, zero

# threadid
# name
# CHECK-INST: csrrs t1, threadid, zero
# CHECK-ENC: encoding: [0x73,0x23,0x10,0xcc]
# CHECK-INST-ALIAS: csrr t1, threadid
# uimm12
# CHECK-INST: csrrs t2, threadid, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x10,0xcc]
# CHECK-INST-ALIAS: csrr t2, threadid
# name
csrrs t1, threadid, zero
# uimm12
csrrs t2, 0xCC1, zero

# msg_available
# name
# CHECK-INST: csrrs t1, msg_available, zero
# CHECK-ENC: encoding: [0x73,0x23,0x20,0xcc]
# CHECK-INST-ALIAS: csrr t1, msg_available
# uimm12
# CHECK-INST: csrrs t2, msg_available, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x20,0xcc]
# CHECK-INST-ALIAS: csrr t2, msg_available
# name
csrrs t1, msg_available, zero
# uimm12
csrrs t2, 0xCC2, zero

# zenomc
# name
# CHECK-INST: csrrs t1, zenomc, zero
# CHECK-ENC: encoding: [0x73,0x23,0x30,0xcc]
# CHECK-INST-ALIAS: csrr t1, zenomc
# uimm12
# CHECK-INST: csrrs t2, zenomc, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x30,0xcc]
# CHECK-INST-ALIAS: csrr t2, zenomc
# name
csrrs t1, zenomc, zero
# uimm12
csrrs t2, 0xCC3, zero

# incoming_msg0
# name
# CHECK-INST: csrrs t1, incoming_msg0, zero
# CHECK-ENC: encoding: [0x73,0x23,0x80,0xcc]
# CHECK-INST-ALIAS: csrr t1, incoming_msg0
# uimm12
# CHECK-INST: csrrs t2, incoming_msg0, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x80,0xcc]
# CHECK-INST-ALIAS: csrr t2, incoming_msg0
# name
csrrs t1, incoming_msg0, zero
# uimm12
csrrs t2, 0xCC8, zero

# incoming_msg1
# name
# CHECK-INST: csrrs t1, incoming_msg1, zero
# CHECK-ENC: encoding: [0x73,0x23,0x90,0xcc]
# CHECK-INST-ALIAS: csrr t1, incoming_msg1
# uimm12
# CHECK-INST: csrrs t2, incoming_msg1, zero
# CHECK-ENC: encoding: [0xf3,0x23,0x90,0xcc]
# CHECK-INST-ALIAS: csrr t2, incoming_msg1
# name
csrrs t1, incoming_msg1, zero
# uimm12
csrrs t2, 0xCC9, zero

# incoming_msg2
# name
# CHECK-INST: csrrs t1, incoming_msg2, zero
# CHECK-ENC: encoding: [0x73,0x23,0xa0,0xcc]
# CHECK-INST-ALIAS: csrr t1, incoming_msg2
# uimm12
# CHECK-INST: csrrs t2, incoming_msg2, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xa0,0xcc]
# CHECK-INST-ALIAS: csrr t2, incoming_msg2
# name
csrrs t1, incoming_msg2, zero
# uimm12
csrrs t2, 0xCCA, zero

# incoming_msg3
# name
# CHECK-INST: csrrs t1, incoming_msg3, zero
# CHECK-ENC: encoding: [0x73,0x23,0xb0,0xcc]
# CHECK-INST-ALIAS: csrr t1, incoming_msg3
# uimm12
# CHECK-INST: csrrs t2, incoming_msg3, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xb0,0xcc]
# CHECK-INST-ALIAS: csrr t2, incoming_msg3
# name
csrrs t1, incoming_msg3, zero
# uimm12
csrrs t2, 0xCCB, zero

# incoming_msg4
# name
# CHECK-INST: csrrs t1, incoming_msg4, zero
# CHECK-ENC: encoding: [0x73,0x23,0xc0,0xcc]
# CHECK-INST-ALIAS: csrr t1, incoming_msg4
# uimm12
# CHECK-INST: csrrs t2, incoming_msg4, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xc0,0xcc]
# CHECK-INST-ALIAS: csrr t2, incoming_msg4
# name
csrrs t1, incoming_msg4, zero
# uimm12
csrrs t2, 0xCCC, zero

# incoming_msg5
# name
# CHECK-INST: csrrs t1, incoming_msg5, zero
# CHECK-ENC: encoding: [0x73,0x23,0xd0,0xcc]
# CHECK-INST-ALIAS: csrr t1, incoming_msg5
# uimm12
# CHECK-INST: csrrs t2, incoming_msg5, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xd0,0xcc]
# CHECK-INST-ALIAS: csrr t2, incoming_msg5
# name
csrrs t1, incoming_msg5, zero
# uimm12
csrrs t2, 0xCCD, zero

# incoming_msg6
# name
# CHECK-INST: csrrs t1, incoming_msg6, zero
# CHECK-ENC: encoding: [0x73,0x23,0xe0,0xcc]
# CHECK-INST-ALIAS: csrr t1, incoming_msg6
# uimm12
# CHECK-INST: csrrs t2, incoming_msg6, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xe0,0xcc]
# CHECK-INST-ALIAS: csrr t2, incoming_msg6
# name
csrrs t1, incoming_msg6, zero
# uimm12
csrrs t2, 0xCCE, zero

# incoming_msg7
# name
# CHECK-INST: csrrs t1, incoming_msg7, zero
# CHECK-ENC: encoding: [0x73,0x23,0xf0,0xcc]
# CHECK-INST-ALIAS: csrr t1, incoming_msg7
# uimm12
# CHECK-INST: csrrs t2, incoming_msg7, zero
# CHECK-ENC: encoding: [0xf3,0x23,0xf0,0xcc]
# CHECK-INST-ALIAS: csrr t2, incoming_msg7
# name
csrrs t1, incoming_msg7, zero
# uimm12
csrrs t2, 0xCCF, zero
