//===-- RISCVInstrInfoXForza.td ----------------------------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the vendor extensions defined by Ventana Micro Systems.
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// XForza
//===----------------------------------------------------------------------===//

// Forza Instruction Formats

// Integer RA-Type AMOs
let Predicates = [IsRV64, HasVendorXForza], hasSideEffects = 1,
    mayLoad = 1, mayStore = 1, isCodeGenOnly = 0, DecoderNamespace = "XForza" in
class ForzaAmoIntRA<bits<7> funct7, string opcodestr>
    : RVInstR<funct7, 0b010, OPC_CUSTOM_0, (outs GPR:$rd),
              (ins GPR:$rs1, GPR:$rs2), opcodestr,
              "$rd, $rs1, $rs2"> {
}

// Floating Point RA-Type AMOs
let Predicates = [IsRV64, HasVendorXForza], hasSideEffects = 1,
    mayLoad = 1, mayStore = 1, isCodeGenOnly = 0, DecoderNamespace = "XForza" in
class ForzaAmoFloatRA<bits<7> funct7, string opcodestr>
    : RVInstR<funct7, 0b010, OPC_CUSTOM_0, (outs FPR64:$rd),
              (ins GPR:$rs1, FPR64:$rs2), opcodestr,
              "$rd, $rs1, $rs2"> {
}

// Forza Instructions

def AMO_R_ADD32U : ForzaAmoIntRA<0b0000000,"amo_r_add32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_AND32U : ForzaAmoIntRA<0b0001000,"amo_r_and32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_OR32U : ForzaAmoIntRA<0b0010000,"amo_r_or32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_XOR32U : ForzaAmoIntRA<0b0011000,"amo_r_xor32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMAX32U : ForzaAmoIntRA<0b0100000,"amo_r_smax32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMAX32U : ForzaAmoIntRA<0b0101000,"amo_r_umax32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMIN32U : ForzaAmoIntRA<0b0110000,"amo_r_smin32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMIN32U : ForzaAmoIntRA<0b0111000,"amo_r_umin32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SWAP32U : ForzaAmoIntRA<0b1000000,"amo_r_swap32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_CAS032U : ForzaAmoIntRA<0b1001000,"amo_r_cas032.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FADD32U : ForzaAmoFloatRA<0b1010000,"amo_r_fadd32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUB32U : ForzaAmoFloatRA<0b1100000,"amo_r_fsub32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUBR32U : ForzaAmoFloatRA<0b1101000,"amo_r_fsubr32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_THRS32U : ForzaAmoIntRA<0b1110000,"amo_r_thrs32.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_ADD64U : ForzaAmoIntRA<0b0000001,"amo_r_add64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_AND64U : ForzaAmoIntRA<0b0001001,"amo_r_and64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_OR64U : ForzaAmoIntRA<0b0010001,"amo_r_or64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_XOR64U : ForzaAmoIntRA<0b0011001,"amo_r_xor64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMAX64U : ForzaAmoIntRA<0b0100001,"amo_r_smax64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMAX64U : ForzaAmoIntRA<0b0101001,"amo_r_umax64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMIN64U : ForzaAmoIntRA<0b0110001,"amo_r_smin64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMIN64U : ForzaAmoIntRA<0b0111001,"amo_r_umin64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SWAP64U : ForzaAmoIntRA<0b1000001,"amo_r_swap64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_CAS064U : ForzaAmoIntRA<0b1001001,"amo_r_cas064.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FADD64U : ForzaAmoFloatRA<0b1010001,"amo_r_fadd64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUB64U : ForzaAmoFloatRA<0b1100001,"amo_r_fsub64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUBR64U : ForzaAmoFloatRA<0b1101001,"amo_r_fsubr64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_THRS64U : ForzaAmoIntRA<0b1110001,"amo_r_thrs64.u">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_ADD32NN : ForzaAmoIntRA<0b0000010,"amo_r_add32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_AND32NN : ForzaAmoIntRA<0b0001010,"amo_r_and32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_OR32NN : ForzaAmoIntRA<0b0010010,"amo_r_or32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_XOR32NN : ForzaAmoIntRA<0b0011010,"amo_r_xor32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMAX32NN : ForzaAmoIntRA<0b0100010,"amo_r_smax32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMAX32NN : ForzaAmoIntRA<0b0101010,"amo_r_umax32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMIN32NN : ForzaAmoIntRA<0b0110010,"amo_r_smin32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMIN32NN : ForzaAmoIntRA<0b0111010,"amo_r_umin32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SWAP32NN : ForzaAmoIntRA<0b1000010,"amo_r_swap32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_CAS032NN : ForzaAmoIntRA<0b1001010,"amo_r_cas032.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FADD32NN : ForzaAmoFloatRA<0b1010010,"amo_r_fadd32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUB32NN : ForzaAmoFloatRA<0b1100010,"amo_r_fsub32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUBR32NN : ForzaAmoFloatRA<0b1101010,"amo_r_fsubr32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_THRS32NN : ForzaAmoIntRA<0b1110010,"amo_r_thrs32.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_ADD64NN : ForzaAmoIntRA<0b0000011,"amo_r_add64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_AND64NN : ForzaAmoIntRA<0b0001011,"amo_r_and64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_OR64NN : ForzaAmoIntRA<0b0010011,"amo_r_or64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_XOR64NN : ForzaAmoIntRA<0b0011011,"amo_r_xor64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMAX64NN : ForzaAmoIntRA<0b0100011,"amo_r_smax64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMAX64NN : ForzaAmoIntRA<0b0101011,"amo_r_umax64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMIN64NN : ForzaAmoIntRA<0b0110011,"amo_r_smin64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMIN64NN : ForzaAmoIntRA<0b0111011,"amo_r_umin64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SWAP64NN : ForzaAmoIntRA<0b1000011,"amo_r_swap64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_CAS064NN : ForzaAmoIntRA<0b1001011,"amo_r_cas064.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FADD64NN : ForzaAmoFloatRA<0b1010011,"amo_r_fadd64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUB64NN : ForzaAmoFloatRA<0b1100011,"amo_r_fsub64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUBR64NN : ForzaAmoFloatRA<0b1101011,"amo_r_fsubr64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_THRS64NN : ForzaAmoIntRA<0b1110011,"amo_r_thrs64.nn">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_ADD32NO : ForzaAmoIntRA<0b0000100,"amo_r_add32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_AND32NO : ForzaAmoIntRA<0b0001100,"amo_r_and32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_OR32NO : ForzaAmoIntRA<0b0010100,"amo_r_or32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_XOR32NO : ForzaAmoIntRA<0b0011100,"amo_r_xor32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMAX32NO : ForzaAmoIntRA<0b0100100,"amo_r_smax32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMAX32NO : ForzaAmoIntRA<0b0101100,"amo_r_umax32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMIN32NO : ForzaAmoIntRA<0b0110100,"amo_r_smin32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMIN32NO : ForzaAmoIntRA<0b0111100,"amo_r_umin32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SWAP32NO : ForzaAmoIntRA<0b1000100,"amo_r_swap32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_CAS032NO : ForzaAmoIntRA<0b1001100,"amo_r_cas032.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FADD32NO : ForzaAmoFloatRA<0b1010100,"amo_r_fadd32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUB32NO : ForzaAmoFloatRA<0b1100100,"amo_r_fsub32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUBR32NO : ForzaAmoFloatRA<0b1101100,"amo_r_fsubr32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_THRS32NO : ForzaAmoIntRA<0b1110100,"amo_r_thrs32.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_ADD64NO : ForzaAmoIntRA<0b0000101,"amo_r_add64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_AND64NO : ForzaAmoIntRA<0b0001101,"amo_r_and64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_OR64NO : ForzaAmoIntRA<0b0010101,"amo_r_or64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_XOR64NO : ForzaAmoIntRA<0b0011101,"amo_r_xor64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMAX64NO : ForzaAmoIntRA<0b0100101,"amo_r_smax64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMAX64NO : ForzaAmoIntRA<0b0101101,"amo_r_umax64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMIN64NO : ForzaAmoIntRA<0b0110101,"amo_r_smin64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMIN64NO : ForzaAmoIntRA<0b0111101,"amo_r_umin64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SWAP64NO : ForzaAmoIntRA<0b1000101,"amo_r_swap64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_CAS064NO : ForzaAmoIntRA<0b1001101,"amo_r_cas064.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FADD64NO : ForzaAmoFloatRA<0b1010101,"amo_r_fadd64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUB64NO : ForzaAmoFloatRA<0b1100101,"amo_r_fsub64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUBR64NO : ForzaAmoFloatRA<0b1101101,"amo_r_fsubr64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_THRS64NO : ForzaAmoIntRA<0b1110101,"amo_r_thrs64.no">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_ADD32ON : ForzaAmoIntRA<0b0000110,"amo_r_add32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_AND32ON : ForzaAmoIntRA<0b0001110,"amo_r_and32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_OR32ON : ForzaAmoIntRA<0b0010110,"amo_r_or32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_XOR32ON : ForzaAmoIntRA<0b0011110,"amo_r_xor32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMAX32ON : ForzaAmoIntRA<0b0100110,"amo_r_smax32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMAX32ON : ForzaAmoIntRA<0b0101110,"amo_r_umax32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMIN32ON : ForzaAmoIntRA<0b0110110,"amo_r_smin32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMIN32ON : ForzaAmoIntRA<0b0111110,"amo_r_umin32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SWAP32ON : ForzaAmoIntRA<0b1000110,"amo_r_swap32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_CAS032ON : ForzaAmoIntRA<0b1001110,"amo_r_cas032.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FADD32ON : ForzaAmoFloatRA<0b1010110,"amo_r_fadd32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUB32ON : ForzaAmoFloatRA<0b1100110,"amo_r_fsub32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUBR32ON : ForzaAmoFloatRA<0b1101110,"amo_r_fsubr32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_THRS32ON : ForzaAmoIntRA<0b1110110,"amo_r_thrs32.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_ADD64ON : ForzaAmoIntRA<0b0000111,"amo_r_add64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_AND64ON : ForzaAmoIntRA<0b0001111,"amo_r_and64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_OR64ON : ForzaAmoIntRA<0b0010111,"amo_r_or64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_XOR64ON : ForzaAmoIntRA<0b0011111,"amo_r_xor64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMAX64ON : ForzaAmoIntRA<0b0100111,"amo_r_smax64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMAX64ON : ForzaAmoIntRA<0b0101111,"amo_r_umax64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SMIN64ON : ForzaAmoIntRA<0b0110111,"amo_r_smin64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_UMIN64ON : ForzaAmoIntRA<0b0111111,"amo_r_umin64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_SWAP64ON : ForzaAmoIntRA<0b1000111,"amo_r_swap64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_CAS064ON : ForzaAmoIntRA<0b1001111,"amo_r_cas064.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FADD64ON : ForzaAmoFloatRA<0b1010111,"amo_r_fadd64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUB64ON : ForzaAmoFloatRA<0b1100111,"amo_r_fsub64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_FSUBR64ON : ForzaAmoFloatRA<0b1101111,"amo_r_fsubr64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
def AMO_R_THRS64ON : ForzaAmoIntRA<0b1110111,"amo_r_thrs64.on">,
                Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
