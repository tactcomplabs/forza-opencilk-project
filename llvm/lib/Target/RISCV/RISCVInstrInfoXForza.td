//===-- RISCVInstrInfoXForza.td ----------------------------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the vendor extensions defined by Tactical Computing Laboratories LLC.
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// XForza
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Forza Operand and SDNode transformation definitions.
//===----------------------------------------------------------------------===//

multiclass ForzaAmoIntSDNode<string mnemonic> {
  def forza_amo_r_ # NAME # 8u : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"8U"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 16u : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16U"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32u : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32U"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64u : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64U"), SDTIntBinOp, [SDNPHasChain]>;

  def forza_amo_r_ # NAME # 8migr_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"8MIGRNN"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 16migr_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16MIGRNN"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32migr_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32MIGRNN"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64migr_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64MIGRNN"), SDTIntBinOp, [SDNPHasChain]>;

  def forza_amo_r_ # NAME # 8migr_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"8MIGRON"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 16migr_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16MIGRON"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32migr_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32MIGRON"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64migr_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64MIGRON"), SDTIntBinOp, [SDNPHasChain]>;

  def forza_amo_r_ # NAME # 8migr_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"8MIGRNO"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 16migr_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16MIGRNO"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32migr_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32MIGRNO"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64migr_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64MIGRNO"), SDTIntBinOp, [SDNPHasChain]>;

  def forza_amo_r_ # NAME # 8rem_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"8REMNN"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 16rem_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16REMNN"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32rem_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32REMNN"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64rem_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64REMNN"), SDTIntBinOp, [SDNPHasChain]>;

  def forza_amo_r_ # NAME # 8rem_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"8REMON"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 16rem_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16REMON"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32rem_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32REMON"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64rem_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64REMON"), SDTIntBinOp, [SDNPHasChain]>;

  def forza_amo_r_ # NAME # 8rem_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"8REMNO"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 16rem_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16REMNO"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32rem_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32REMNO"), SDTIntBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64rem_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64REMNO"), SDTIntBinOp, [SDNPHasChain]>;
}

multiclass ForzaAmoFloatSDNode<string mnemonic> {
  def forza_amo_r_ # NAME # 16u : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16U"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32u : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32U"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64u : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64U"), SDTFPBinOp, [SDNPHasChain]>;

  def forza_amo_r_ # NAME # 16migr_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16MIGRNN"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32migr_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32MIGRNN"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64migr_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64MIGRNN"), SDTFPBinOp, [SDNPHasChain]>;

  def forza_amo_r_ # NAME # 16migr_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16MIGRON"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32migr_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32MIGRON"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64migr_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64MIGRON"), SDTFPBinOp, [SDNPHasChain]>;

  def forza_amo_r_ # NAME # 16migr_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16MIGRNO"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32migr_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32MIGRNO"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64migr_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64MIGRNO"), SDTFPBinOp, [SDNPHasChain]>;

  def forza_amo_r_ # NAME # 16rem_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16REMNN"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32rem_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32REMNN"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64rem_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64REMNN"), SDTFPBinOp, [SDNPHasChain]>;

  def forza_amo_r_ # NAME # 16rem_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16REMON"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32rem_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32REMON"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64rem_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64REMON"), SDTFPBinOp, [SDNPHasChain]>;

  def forza_amo_r_ # NAME # 16rem_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16REMNO"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 32rem_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32REMNO"), SDTFPBinOp, [SDNPHasChain]>;
  def forza_amo_r_ # NAME # 64rem_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64REMNO"), SDTFPBinOp, [SDNPHasChain]>;
}

defm add : ForzaAmoIntSDNode<"ADD">;
defm and : ForzaAmoIntSDNode<"AND">;
defm or : ForzaAmoIntSDNode<"OR">;
defm xor : ForzaAmoIntSDNode<"XOR">;
defm smax : ForzaAmoIntSDNode<"SMAX">;
defm umax : ForzaAmoIntSDNode<"UMAX">;
defm smin : ForzaAmoIntSDNode<"SMIN">;
defm umin : ForzaAmoIntSDNode<"UMIN">;
defm swap : ForzaAmoIntSDNode<"SWAP">;
defm thrs : ForzaAmoIntSDNode<"THRS">;

defm fadd : ForzaAmoFloatSDNode<"FADD">;
defm fsub : ForzaAmoFloatSDNode<"FSUB">;
defm fsubr : ForzaAmoFloatSDNode<"FSUBR">;

//===----------------------------------------------------------------------===//
// Forza Instruction Formats
//===----------------------------------------------------------------------===//

// Forza opcodes
def OPC_FORZA_RMAC      : RISCVOpcode<"FORZA_RMAC",      0b1111111>;
def OPC_FORZA_MCPY      : RISCVOpcode<"FORZA_MCPY",      0b1101011>;

class ForzaAmoIntRA<bits<7> funct7, bits<3> funct3, string opcodestr>
    : RVInstR<funct7, funct3, OPC_CUSTOM_0, (outs GPR:$rd),
              (ins GPRMem:$rs1, GPR:$rs2), opcodestr,
              "$rd, $rs1, $rs2"> {
}

class ForzaAmoFloatRA<bits<7> funct7, bits<3> funct3, string opcodestr>
    : RVInstR<funct7, funct3, OPC_CUSTOM_0, (outs FPR64:$rd),
              (ins GPRMem:$rs1, FPR64:$rs2), opcodestr,
              "$rd, $rs1, $rs2"> {
}

let hasNoSchedulingInfo = 1,
    hasSideEffects = 1, mayLoad = 0, mayStore = 1 in
class ForzaThreadS<bits<3> funct3, string opcodestr>
    : RVInstS<funct3, OPC_STORE, (outs),
              (ins GPR:$rs2, GPRMem:$rs1, simm12:$imm12),
              opcodestr, "$rs2, ${imm12}(${rs1})">;

let hasNoSchedulingInfo = 1,
    hasSideEffects = 1, mayLoad = 0, mayStore = 0 in
class ForzaThreadI<bits<3> funct3, RISCVOpcode opcode, string opcodestr>
    : RVInstI<funct3, opcode, (outs GPR:$rd), (ins GPR:$rs1, simm12:$imm12),
              opcodestr, "$rd, $rs1, $imm12">, Sched<[WriteCSR]>;

let hasNoSchedulingInfo = 1,
    hasSideEffects = 1, mayLoad = 0, mayStore = 0 in
class ForzaThreadR<bits<7> funct7, bits<3> funct3, RISCVOpcode opcode, string opcodestr>
    : RVInstR<funct7, funct3, opcode, (outs GPR:$rd),
              (ins GPR:$rs1, GPR:$rs2), opcodestr,
              "$rd, $rs1, $rs2">, Sched<[WriteCSR]>;

class ForzaRMACBase<bits<3> funct3, bits<2> rm, RISCVOpcode opcode, dag outs,
                    dag ins, string opcodestr, string argstr>
    : RVInst<outs, ins, opcodestr, argstr, [], InstFormatOther> {
  bits<5> rs2;
  bits<5> rs1;
  bits<5> rs3;

  let Inst{31-27} = rs3;
  let Inst{26-25} = rm;
  let Inst{24-20} = rs2;
  let Inst{19-15} = rs1;
  let Inst{14-12} = funct3;
  let Inst{11-7} = 0b00000;
  let Inst{6-0} = opcode.Value;
}

class ForzaMCPY<RISCVOpcode opcode, string opcodestr>
  : ForzaRMACBase<0b000, 0b00, opcode, (outs GPRMem:$rs1), (ins GPRMem:$rs2, GPR:$rs3),
                  opcodestr, "$rs1, $rs2, $rs3">;

class ForzaRMAC<bits<3> funct3, RISCVOpcode opcode, string opcodestr>
  : ForzaRMACBase<funct3, 0b00, opcode, (outs GPR:$rs3), (ins GPRMem:$rs1, GPR:$rs2),
                  opcodestr, "$rs3, $rs1, $rs2"> {
}

class ForzaRFMAC<bits<3> funct3, bits<2> rm, RISCVOpcode opcode, string opcodestr>
  : ForzaRMACBase<funct3, rm, opcode, (outs FPR64:$rs3), (ins GPRMem:$rs1, FPR64:$rs2),
                  opcodestr, "$rs3, $rs1, $rs2"> {
}


// Multiclass template to define instruction encodings
// Instructions are defined as: amo_r_[OP][SIZE].FMT
// -- 0 = U
// -- 1 = migr_nn
// -- 2 = migr_on
// -- 3 = migr_no
// -- 4 = [reserved]
// -- 5 = rem_nn
// -- 6 = rem_on
// -- 7 = rem_no
multiclass ForzaAmoIntRAClass<bits<4> opfunc, string mnemonic> {
  def AMO_R_ # NAME # 8U:  ForzaAmoIntRA<{opfunc,0b000},0b011,!strconcat(mnemonic, "8.u")>;
  def AMO_R_ # NAME # 16U: ForzaAmoIntRA<{opfunc,0b000},0b010,!strconcat(mnemonic, "16.u")>;
  def AMO_R_ # NAME # 32U: ForzaAmoIntRA<{opfunc,0b000},0b000,!strconcat(mnemonic, "32.u")>;
  def AMO_R_ # NAME # 64U: ForzaAmoIntRA<{opfunc,0b000},0b001,!strconcat(mnemonic, "64.u")>;

  def AMO_R_ # NAME # 8MIGRNN:  ForzaAmoIntRA<{opfunc,0b001},0b011,!strconcat(mnemonic, "8.migr_nn")>;
  def AMO_R_ # NAME # 16MIGRNN: ForzaAmoIntRA<{opfunc,0b001},0b010,!strconcat(mnemonic, "16.migr_nn")>;
  def AMO_R_ # NAME # 32MIGRNN: ForzaAmoIntRA<{opfunc,0b001},0b000,!strconcat(mnemonic, "32.migr_nn")>;
  def AMO_R_ # NAME # 64MIGRNN: ForzaAmoIntRA<{opfunc,0b001},0b001,!strconcat(mnemonic, "64.migr_nn")>;

  def AMO_R_ # NAME # 8MIGRON:  ForzaAmoIntRA<{opfunc,0b010},0b011,!strconcat(mnemonic, "8.migr_on")>;
  def AMO_R_ # NAME # 16MIGRON: ForzaAmoIntRA<{opfunc,0b010},0b010,!strconcat(mnemonic, "16.migr_on")>;
  def AMO_R_ # NAME # 32MIGRON: ForzaAmoIntRA<{opfunc,0b010},0b000,!strconcat(mnemonic, "32.migr_on")>;
  def AMO_R_ # NAME # 64MIGRON: ForzaAmoIntRA<{opfunc,0b010},0b001,!strconcat(mnemonic, "64.migr_on")>;

  def AMO_R_ # NAME # 8MIGRNO:  ForzaAmoIntRA<{opfunc,0b011},0b011,!strconcat(mnemonic, "8.migr_no")>;
  def AMO_R_ # NAME # 16MIGRNO: ForzaAmoIntRA<{opfunc,0b011},0b010,!strconcat(mnemonic, "16.migr_no")>;
  def AMO_R_ # NAME # 32MIGRNO: ForzaAmoIntRA<{opfunc,0b011},0b000,!strconcat(mnemonic, "32.migr_no")>;
  def AMO_R_ # NAME # 64MIGRNO: ForzaAmoIntRA<{opfunc,0b011},0b001,!strconcat(mnemonic, "64.migr_no")>;

  def AMO_R_ # NAME # 8REMNN:  ForzaAmoIntRA<{opfunc,0b101},0b011,!strconcat(mnemonic, "8.rem_nn")>;
  def AMO_R_ # NAME # 16REMNN: ForzaAmoIntRA<{opfunc,0b101},0b010,!strconcat(mnemonic, "16.rem_nn")>;
  def AMO_R_ # NAME # 32REMNN: ForzaAmoIntRA<{opfunc,0b101},0b000,!strconcat(mnemonic, "32.rem_nn")>;
  def AMO_R_ # NAME # 64REMNN: ForzaAmoIntRA<{opfunc,0b101},0b001,!strconcat(mnemonic, "64.rem_nn")>;

  def AMO_R_ # NAME # 8REMON:  ForzaAmoIntRA<{opfunc,0b110},0b011,!strconcat(mnemonic, "8.rem_on")>;
  def AMO_R_ # NAME # 16REMON: ForzaAmoIntRA<{opfunc,0b110},0b010,!strconcat(mnemonic, "16.rem_on")>;
  def AMO_R_ # NAME # 32REMON: ForzaAmoIntRA<{opfunc,0b110},0b000,!strconcat(mnemonic, "32.rem_on")>;
  def AMO_R_ # NAME # 64REMON: ForzaAmoIntRA<{opfunc,0b110},0b001,!strconcat(mnemonic, "64.rem_on")>;

  def AMO_R_ # NAME # 8REMNO:  ForzaAmoIntRA<{opfunc,0b111},0b011,!strconcat(mnemonic, "8.rem_no")>;
  def AMO_R_ # NAME # 16REMNO: ForzaAmoIntRA<{opfunc,0b111},0b010,!strconcat(mnemonic, "16.rem_no")>;
  def AMO_R_ # NAME # 32REMNO: ForzaAmoIntRA<{opfunc,0b111},0b000,!strconcat(mnemonic, "32.rem_no")>;
  def AMO_R_ # NAME # 64REMNO: ForzaAmoIntRA<{opfunc,0b111},0b001,!strconcat(mnemonic, "64.rem_no")>;
}

multiclass ForzaAmoFloatRAClass<bits<4> opfunc, string mnemonic> {
  def AMO_R_ # NAME # 16U: ForzaAmoFloatRA<{opfunc,0b000},0b010,!strconcat(mnemonic, "16.u")>;
  def AMO_R_ # NAME # 32U: ForzaAmoFloatRA<{opfunc,0b000},0b000,!strconcat(mnemonic, "32.u")>;
  def AMO_R_ # NAME # 64U: ForzaAmoFloatRA<{opfunc,0b000},0b001,!strconcat(mnemonic, "64.u")>;

  def AMO_R_ # NAME # 16MIGRNN: ForzaAmoFloatRA<{opfunc,0b001},0b010,!strconcat(mnemonic, "16.migr_nn")>;
  def AMO_R_ # NAME # 32MIGRNN: ForzaAmoFloatRA<{opfunc,0b001},0b000,!strconcat(mnemonic, "32.migr_nn")>;
  def AMO_R_ # NAME # 64MIGRNN: ForzaAmoFloatRA<{opfunc,0b001},0b001,!strconcat(mnemonic, "64.migr_nn")>;

  def AMO_R_ # NAME # 16MIGRON: ForzaAmoFloatRA<{opfunc,0b010},0b010,!strconcat(mnemonic, "16.migr_on")>;
  def AMO_R_ # NAME # 32MIGRON: ForzaAmoFloatRA<{opfunc,0b010},0b000,!strconcat(mnemonic, "32.migr_on")>;
  def AMO_R_ # NAME # 64MIGRON: ForzaAmoFloatRA<{opfunc,0b010},0b001,!strconcat(mnemonic, "64.migr_on")>;

  def AMO_R_ # NAME # 16MIGRNO: ForzaAmoFloatRA<{opfunc,0b011},0b010,!strconcat(mnemonic, "16.migr_no")>;
  def AMO_R_ # NAME # 32MIGRNO: ForzaAmoFloatRA<{opfunc,0b011},0b000,!strconcat(mnemonic, "32.migr_no")>;
  def AMO_R_ # NAME # 64MIGRNO: ForzaAmoFloatRA<{opfunc,0b011},0b001,!strconcat(mnemonic, "64.migr_no")>;

  def AMO_R_ # NAME # 16REMNN: ForzaAmoFloatRA<{opfunc,0b101},0b010,!strconcat(mnemonic, "16.rem_nn")>;
  def AMO_R_ # NAME # 32REMNN: ForzaAmoFloatRA<{opfunc,0b101},0b000,!strconcat(mnemonic, "32.rem_nn")>;
  def AMO_R_ # NAME # 64REMNN: ForzaAmoFloatRA<{opfunc,0b101},0b001,!strconcat(mnemonic, "64.rem_nn")>;

  def AMO_R_ # NAME # 16REMON: ForzaAmoFloatRA<{opfunc,0b110},0b010,!strconcat(mnemonic, "16.rem_on")>;
  def AMO_R_ # NAME # 32REMON: ForzaAmoFloatRA<{opfunc,0b110},0b000,!strconcat(mnemonic, "32.rem_on")>;
  def AMO_R_ # NAME # 64REMON: ForzaAmoFloatRA<{opfunc,0b110},0b001,!strconcat(mnemonic, "64.rem_on")>;

  def AMO_R_ # NAME # 16REMNO: ForzaAmoFloatRA<{opfunc,0b111},0b010,!strconcat(mnemonic, "16.rem_no")>;
  def AMO_R_ # NAME # 32REMNO: ForzaAmoFloatRA<{opfunc,0b111},0b000,!strconcat(mnemonic, "32.rem_no")>;
  def AMO_R_ # NAME # 64REMNO: ForzaAmoFloatRA<{opfunc,0b111},0b001,!strconcat(mnemonic, "64.rem_no")>;
}

//===----------------------------------------------------------------------===//
// Forza Instructions
//===----------------------------------------------------------------------===//

let Predicates = [IsRV64, HasVendorXForza], hasSideEffects = 1,
    mayLoad = 0, mayStore = 0, isCodeGenOnly = 0, DecoderNamespace = "XForza" in {
  defm ADD : ForzaAmoIntRAClass<0b0000, "amo_r_add">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm SUB : ForzaAmoIntRAClass<0b0001, "amo_r_sub">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm AND : ForzaAmoIntRAClass<0b0010, "amo_r_and">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm OR : ForzaAmoIntRAClass<0b0011, "amo_r_or">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm XOR : ForzaAmoIntRAClass<0b0100, "amo_r_xor">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm SMAX : ForzaAmoIntRAClass<0b0101, "amo_r_smax">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm UMAX : ForzaAmoIntRAClass<0b0110, "amo_r_umax">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm SMIN : ForzaAmoIntRAClass<0b0111, "amo_r_smin">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm UMIN : ForzaAmoIntRAClass<0b1000, "amo_r_umin">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm SWAP : ForzaAmoIntRAClass<0b1001, "amo_r_swap">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm THRS : ForzaAmoIntRAClass<0b1110, "amo_r_thrs">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
}

let Predicates = [IsRV64, HasVendorXForza], hasSideEffects = 1,
    mayLoad = 0, mayStore = 0, isCodeGenOnly = 0, DecoderNamespace = "XForza" in {
  defm FADD : ForzaAmoFloatRAClass<0b1011, "amo_r_fadd">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm FSUB : ForzaAmoFloatRAClass<0b1100, "amo_r_fsub">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm FSUBR : ForzaAmoFloatRAClass<0b1101, "amo_r_fsubr">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
}

let Predicates = [IsRV64, HasVendorXForza], hasSideEffects = 1,
    mayLoad = 0, mayStore = 0, isCodeGenOnly = 0, DecoderNamespace = "XForza" in {
  def QUIT : ForzaThreadI<0b010, OPC_CUSTOM_1, "quit">;
  def SENDACK: ForzaThreadR<0b1010000, 0b000, OPC_CUSTOM_0, "sendack">;
  def SPAWN : ForzaThreadR<0b0000000, 0b000, OPC_OP_P, "spawn">;
}

let Predicates = [IsRV64, HasVendorXForza], hasSideEffects = 1,
    mayLoad = 0, mayStore = 0, isCodeGenOnly = 0, DecoderNamespace = "XForza" in {
  def RMACWW : ForzaRMAC<0b000, OPC_FORZA_RMAC, "rmac.ww">;
  def RMACWD : ForzaRMAC<0b001, OPC_FORZA_RMAC, "rmac.wd">;
  def RMACDD : ForzaRMAC<0b010, OPC_FORZA_RMAC, "rmac.dd">;
  def MCOPY : ForzaMCPY<OPC_FORZA_MCPY, "mcopy">;
}

// Instruction aliases
let Predicates = [IsRV64, HasVendorXForza] in {
  def : InstAlias<"quit_thread", (QUIT  X0, X0, 0)>;
}


//===----------------------------------------------------------------------===//
// Codegen patterns
//===----------------------------------------------------------------------===//

let Predicates = [HasVendorXForza] in {
  class PatGprMemGpr64<SDPatternOperator OpNode, RVInst Inst>
    : Pat<(i64 (OpNode (i64 GPRMem:$rs1), (i64 GPR:$rs2))),
      (Inst GPRMem:$rs1, GPR:$rs2)>;
  class PatGprMemGpr<SDPatternOperator OpNode, RVInst Inst, ValueType vt1 = XLenVT,
                ValueType vt2 = XLenVT>
    : Pat<(vt1 (OpNode (vt1 GPRMem:$rs1), (vt2 GPR:$rs2))), (Inst GPRMem:$rs1, GPR:$rs2)>;
  class PatGprMemFpr<SDPatternOperator OpNode, RVInst Inst,
                ValueType vt1 = XLenVT>
                //ValueType vt2 = XLenVT>
    : Pat<(f64 (OpNode (vt1 GPRMem:$rs1), (f64 FPR64:$rs2))), (Inst GPRMem:$rs1,FPR64:$rs2)>;

  multiclass ForzaAmoPatGprMemGpr<string name> {
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "8u"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "8U")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16u"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "16U")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32u"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "32U")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64u"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64U")>;

    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "8migr_nn"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "8MIGRNN")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16migr_nn"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "16MIGRNN")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32migr_nn"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "32MIGRNN")>;
    def : PatGprMemGpr64<!cast<SDPatternOperator>("forza_amo_r_" # name # "64migr_nn"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64MIGRNN")>;

    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "8migr_on"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "8MIGRON")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16migr_on"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "16MIGRON")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32migr_on"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "32MIGRON")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64migr_on"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64MIGRON")>;

    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "8migr_no"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "8MIGRNO")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16migr_no"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "16MIGRNO")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32migr_no"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "32MIGRNO")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64migr_no"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64MIGRNO")>;

    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "8rem_nn"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "8REMNN")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16rem_nn"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "16REMNN")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32rem_nn"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "32REMNN")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64rem_nn"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64REMNN")>;

    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "8rem_on"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "8REMON")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16rem_on"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "16REMON")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32rem_on"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "32REMON")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64rem_on"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64REMON")>;

    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "8rem_no"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "8REMNO")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16rem_no"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "16REMNO")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32rem_no"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "32REMNO")>;
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64rem_no"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64REMNO")>;
  }

  multiclass ForzaAmoPatGprMemFpr<string name> {
    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16u"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "16U")>;
    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32u"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "32U")>;
    def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64u"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64U")>;

    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16migr_nn"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "16MIGRNN")>;
    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32migr_nn"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "32MIGRNN")>;
    def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64migr_nn"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64MIGRNN")>;

    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16migr_on"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "16MIGRON")>;
    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32migr_on"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "32MIGRON")>;
    def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64migr_on"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64MIGRON")>;

    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16migr_no"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "16MIGRNO")>;
    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32migr_no"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "32MIGRNO")>;
    def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64migr_no"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64MIGRNO")>;

    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16rem_nn"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "16REMNN")>;
    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32rem_nn"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "32REMNN")>;
    def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64rem_nn"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64REMNN")>;

    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16rem_on"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "16REMON")>;
    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32rem_on"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "32REMON")>;
    def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64rem_on"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64REMON")>;

    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "16rem_no"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "16REMNO")>;
    //def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "32rem_no"),
    //                   !cast<RVInst>("AMO_R_" # !toupper(name) # "32REMNO")>;
    def : PatGprMemFpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64rem_no"),
                       !cast<RVInst>("AMO_R_" # !toupper(name) # "64REMNO")>;

  }

  defm "" : ForzaAmoPatGprMemGpr<"add">;
  defm "" : ForzaAmoPatGprMemGpr<"and">;
  defm "" : ForzaAmoPatGprMemGpr<"or">;
  defm "" : ForzaAmoPatGprMemGpr<"xor">;
  defm "" : ForzaAmoPatGprMemGpr<"smax">;
  defm "" : ForzaAmoPatGprMemGpr<"umax">;
  defm "" : ForzaAmoPatGprMemGpr<"smin">;
  defm "" : ForzaAmoPatGprMemGpr<"umin">;
  defm "" : ForzaAmoPatGprMemGpr<"swap">;
  defm "" : ForzaAmoPatGprMemGpr<"thrs">;

  //defm "" : ForzaAmoPatGprMemFpr<"fadd">;
  //defm "" : ForzaAmoPatGprMemFpr<"fsub">;
  //defm "" : ForzaAmoPatGprMemFpr<"fsubr">;
}
