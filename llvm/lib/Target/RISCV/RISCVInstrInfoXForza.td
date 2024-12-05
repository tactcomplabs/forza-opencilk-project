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
  def forza_amo_r_ # NAME # 16u : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16U"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 32u : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32U"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 64u : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64U"), SDTFPBinOp, [SDNPSideEffect]>;

  def forza_amo_r_ # NAME # 16migr_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16MIGRNN"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 32migr_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32MIGRNN"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 64migr_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64MIGRNN"), SDTFPBinOp, [SDNPSideEffect]>;

  def forza_amo_r_ # NAME # 16migr_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16MIGRON"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 32migr_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32MIGRON"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 64migr_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64MIGRON"), SDTFPBinOp, [SDNPSideEffect]>;

  def forza_amo_r_ # NAME # 16migr_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16MIGRNO"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 32migr_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32MIGRNO"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 64migr_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64MIGRNO"), SDTFPBinOp, [SDNPSideEffect]>;

  def forza_amo_r_ # NAME # 16rem_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16REMNN"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 32rem_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32REMNN"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 64rem_nn : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64REMNN"), SDTFPBinOp, [SDNPSideEffect]>;

  def forza_amo_r_ # NAME # 16rem_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16REMON"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 32rem_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32REMON"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 64rem_on : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64REMON"), SDTFPBinOp, [SDNPSideEffect]>;

  def forza_amo_r_ # NAME # 16rem_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"16REMNO"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 32rem_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"32REMNO"), SDTFPBinOp, [SDNPSideEffect]>;
  def forza_amo_r_ # NAME # 64rem_no : SDNode<!strconcat("RISCVISD::AMO_R_",mnemonic,"64REMNO"), SDTFPBinOp, [SDNPSideEffect]>;
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

def forza_quit : SDNode<"RISCVISD::QUIT", SDTNone, [SDNPSideEffect]>;
def forza_resched : SDNode<"RISCVISD::RESCHED", SDTNone, [SDNPSideEffect]>;
def forza_spawn : SDNode<"RISCVISD::SPAWN", SDTNone, [SDNPSideEffect]>;
def forza_mcopy : SDNode<"RISCVISD::MCOPY", SDTNone, [SDNPSideEffect]>;


//===----------------------------------------------------------------------===//
// Forza Instruction Formats
//===----------------------------------------------------------------------===//

// Forza opcodes
def OPC_FORZA_RMAC      : RISCVOpcode<"FORZA_RMAC",      0b0111111>;
def OPC_FORZA_MCPY      : RISCVOpcode<"FORZA_MCPY",      0b1101011>;

class ForzaAmoIntRA<bits<7> funct7, bits<3> funct3, string opcodestr>
    : RVInstR<funct7, funct3, OPC_CUSTOM_0, (outs GPR:$rd),
              (ins GPRMem:$rs1, GPR:$rs2), opcodestr,
              "$rd, $rs1, $rs2"> {
}

class ForzaAmoFloatRA64<bits<7> funct7, bits<3> funct3, string opcodestr>
    : RVInstR<funct7, funct3, OPC_CUSTOM_0, (outs FPR64:$rd),
              (ins GPRMem:$rs1, FPR64:$rs2), opcodestr,
              "$rd, $rs1, $rs2"> {
}
class ForzaAmoFloatRA32<bits<7> funct7, bits<3> funct3, string opcodestr>
    : RVInstR<funct7, funct3, OPC_CUSTOM_0, (outs FPR32:$rd),
              (ins GPRMem:$rs1, FPR32:$rs2), opcodestr,
              "$rd, $rs1, $rs2"> {
}
class ForzaAmoFloatRA16<bits<7> funct7, bits<3> funct3, string opcodestr>
    : RVInstR<funct7, funct3, OPC_CUSTOM_0, (outs FPR16:$rd),
              (ins GPRMem:$rs1, FPR16:$rs2), opcodestr,
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

let hasNoSchedulingInfo = 1 in
class ForzaThreadISpc<bits<3> funct3, RISCVOpcode opcode, string opcodestr>
    : RVInstI<funct3, opcode, (outs), (ins),
              opcodestr, "">, Sched<[WriteCSR]>{
  let Inst{11-7} = 0b00000;
  let Inst{19-15} = 0b00000;
  let Inst{31-20} = 0b000000000000;
}

let hasNoSchedulingInfo = 1 in
class ForzaThreadR<bits<7> funct7, bits<3> funct3, RISCVOpcode opcode, string opcodestr>
    : RVInstR<funct7, funct3, opcode, (outs GPR:$rd),
              (ins GPR:$rs1, GPR:$rs2), opcodestr,
              "$rd, $rs1, $rs2">, Sched<[WriteCSR]>;

class ForzaRMACBase<bits<3> funct3, bits<2> rm, bits<5> rd, RISCVOpcode opcode, dag outs,
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
  let Inst{11-7} = rd;
  let Inst{6-0} = opcode.Value;
}

class ForzaPZOPBase<bits<3> funct3, bits<2> nb, RISCVOpcode opcode, dag outs,
                    dag ins, string opcodestr, string argstr>
    : RVInst<outs, ins, opcodestr, argstr, [], InstFormatOther> {
  bits<5> rs2;
  bits<5> rs1;
  bits<5> rs3;
  bits<5> uimm5;

  let Inst{31-27} = rs3;
  let Inst{26-25} = nb;
  let Inst{24-20} = rs2;
  let Inst{19-15} = rs1;
  let Inst{14-12} = funct3;
  let Inst{11-7} = uimm5;
  let Inst{6-0} = opcode.Value;
}


class ForzaMCPY<RISCVOpcode opcode, string opcodestr>
  : ForzaRMACBase<0b000, 0b00, 0b00000, opcode, (outs), (ins GPRMem:$rs1, GPRMem:$rs2, GPR:$rs3),
                  opcodestr, "$rs1, $rs2, $rs3">;

class ForzaRMAC<bits<3> funct3, RISCVOpcode opcode, string opcodestr>
  : ForzaRMACBase<funct3, 0b00, 0b00000, opcode, (outs GPRMem:$rs3), (ins GPR:$rs1, GPR:$rs2),
                  opcodestr, "$rs1, $rs2, $rs3"> {
}

class ForzaRFMAC<bits<3> funct3, bits<5> rm, RISCVOpcode opcode, string opcodestr>
  : ForzaRMACBase<funct3, 0b00, rm, opcode, (outs GPRMem:$rs3), (ins FPR64:$rs1, FPR64:$rs2),
                  opcodestr, "$rs1, $rs2, $rs3"> {
}

class ForzaPZOPII<bits<3> funct3, RISCVOpcode opcode, string opcodestr>
  : ForzaPZOPBase<funct3, 0b00, opcode, (outs GPR:$rs3),
                  (ins GPR:$rs1, GPR:$rs2, uimm5:$uimm5),
                  opcodestr, "$rs1, $rs2, $rs3, ${uimm5}"> {
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
  def AMO_R_ # NAME # 16U: ForzaAmoFloatRA16<{opfunc,0b000},0b010,!strconcat(mnemonic, "16.u")>;
  def AMO_R_ # NAME # 32U: ForzaAmoFloatRA32<{opfunc,0b000},0b000,!strconcat(mnemonic, "32.u")>;
  def AMO_R_ # NAME # 64U: ForzaAmoFloatRA64<{opfunc,0b000},0b001,!strconcat(mnemonic, "64.u")>;

  def AMO_R_ # NAME # 16MIGRNN: ForzaAmoFloatRA16<{opfunc,0b001},0b010,!strconcat(mnemonic, "16.migr_nn")>;
  def AMO_R_ # NAME # 32MIGRNN: ForzaAmoFloatRA32<{opfunc,0b001},0b000,!strconcat(mnemonic, "32.migr_nn")>;
  def AMO_R_ # NAME # 64MIGRNN: ForzaAmoFloatRA64<{opfunc,0b001},0b001,!strconcat(mnemonic, "64.migr_nn")>;

  def AMO_R_ # NAME # 16MIGRON: ForzaAmoFloatRA16<{opfunc,0b010},0b010,!strconcat(mnemonic, "16.migr_on")>;
  def AMO_R_ # NAME # 32MIGRON: ForzaAmoFloatRA32<{opfunc,0b010},0b000,!strconcat(mnemonic, "32.migr_on")>;
  def AMO_R_ # NAME # 64MIGRON: ForzaAmoFloatRA64<{opfunc,0b010},0b001,!strconcat(mnemonic, "64.migr_on")>;

  def AMO_R_ # NAME # 16MIGRNO: ForzaAmoFloatRA16<{opfunc,0b011},0b010,!strconcat(mnemonic, "16.migr_no")>;
  def AMO_R_ # NAME # 32MIGRNO: ForzaAmoFloatRA32<{opfunc,0b011},0b000,!strconcat(mnemonic, "32.migr_no")>;
  def AMO_R_ # NAME # 64MIGRNO: ForzaAmoFloatRA64<{opfunc,0b011},0b001,!strconcat(mnemonic, "64.migr_no")>;

  def AMO_R_ # NAME # 16REMNN: ForzaAmoFloatRA16<{opfunc,0b101},0b010,!strconcat(mnemonic, "16.rem_nn")>;
  def AMO_R_ # NAME # 32REMNN: ForzaAmoFloatRA32<{opfunc,0b101},0b000,!strconcat(mnemonic, "32.rem_nn")>;
  def AMO_R_ # NAME # 64REMNN: ForzaAmoFloatRA64<{opfunc,0b101},0b001,!strconcat(mnemonic, "64.rem_nn")>;

  def AMO_R_ # NAME # 16REMON: ForzaAmoFloatRA16<{opfunc,0b110},0b010,!strconcat(mnemonic, "16.rem_on")>;
  def AMO_R_ # NAME # 32REMON: ForzaAmoFloatRA32<{opfunc,0b110},0b000,!strconcat(mnemonic, "32.rem_on")>;
  def AMO_R_ # NAME # 64REMON: ForzaAmoFloatRA64<{opfunc,0b110},0b001,!strconcat(mnemonic, "64.rem_on")>;

  def AMO_R_ # NAME # 16REMNO: ForzaAmoFloatRA16<{opfunc,0b111},0b010,!strconcat(mnemonic, "16.rem_no")>;
  def AMO_R_ # NAME # 32REMNO: ForzaAmoFloatRA32<{opfunc,0b111},0b000,!strconcat(mnemonic, "32.rem_no")>;
  def AMO_R_ # NAME # 64REMNO: ForzaAmoFloatRA64<{opfunc,0b111},0b001,!strconcat(mnemonic, "64.rem_no")>;
}

multiclass ForzaRFMACClass<bits<3> funct3, string mnemonic> {
  def RFMAC_ # NAME # _RNE: ForzaRFMAC<funct3,0b00000,OPC_FORZA_RMAC,
                                    !strconcat(mnemonic, ".rne")>;
  def RFMAC_ # NAME # _RTZ: ForzaRFMAC<funct3,0b00001,OPC_FORZA_RMAC,
                                    !strconcat(mnemonic, ".rtz")>;
  def RFMAC_ # NAME # _RDN: ForzaRFMAC<funct3,0b00010,OPC_FORZA_RMAC,
                                    !strconcat(mnemonic, ".rdn")>;
  def RFMAC_ # NAME # _RUP: ForzaRFMAC<funct3,0b00011,OPC_FORZA_RMAC,
                                    !strconcat(mnemonic, ".rup")>;
  def RFMAC_ # NAME # _RMM: ForzaRFMAC<funct3,0b00100,OPC_FORZA_RMAC,
                                    !strconcat(mnemonic, ".rmm")>;
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
    mayLoad = 1, mayStore = 1, isCodeGenOnly = 0, DecoderNamespace = "XForza" in {
  defm FADD : ForzaAmoFloatRAClass<0b1011, "amo_r_fadd">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm FSUB : ForzaAmoFloatRAClass<0b1100, "amo_r_fsub">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
  defm FSUBR : ForzaAmoFloatRAClass<0b1101, "amo_r_fsubr">,
              Sched<[WriteAtomicD, ReadAtomicDA, ReadAtomicDD]>;
}

let Predicates = [IsRV64, HasVendorXForza], hasSideEffects = 1,
    isCodeGenOnly = 0, DecoderNamespace = "XForza" in {
  def QUIT : ForzaThreadISpc<0b010, OPC_CUSTOM_1, "quit">;
  def RESCHED : ForzaThreadISpc<0b011, OPC_CUSTOM_1, "resched">;
  def SPAWN : ForzaThreadR<0b0000000, 0b000, OPC_OP_P, "spawn">;
  def MCOPY : ForzaMCPY<OPC_FORZA_MCPY, "mcopy">;
}

let Predicates = [IsRV64, HasVendorXForza], hasSideEffects = 1,
    mayLoad = 0, mayStore = 0, isCodeGenOnly = 0, DecoderNamespace = "XForza" in {
  def RMACWW : ForzaRMAC<0b000, OPC_FORZA_RMAC, "rmac.ww">;
  def RMACWD : ForzaRMAC<0b001, OPC_FORZA_RMAC, "rmac.wd">;
  def RMACDD : ForzaRMAC<0b010, OPC_FORZA_RMAC, "rmac.dd">;
  def PZOPII : ForzaPZOPII<0b001, OPC_FORZA_MCPY, "pzop.ii">;
  def SENDACK: ForzaThreadR<0b1010000, 0b000, OPC_CUSTOM_0, "sendack">;

  defm BF : ForzaRFMACClass<0b011, "rfmac_bf">;
  defm BD : ForzaRFMACClass<0b100, "rfmac_bd">;
  defm FF : ForzaRFMACClass<0b101, "rfmac_ff">;
  defm FD : ForzaRFMACClass<0b110, "rfmac_fd">;
  defm DD : ForzaRFMACClass<0b111, "rfmac_dd">;
}

//===----------------------------------------------------------------------===//
// Codegen patterns
//===----------------------------------------------------------------------===//
let Predicates = [HasVendorXForza] in {
  class PatGpGpr<SDPatternOperator OpNode, RVInst Inst, ValueType vt1 = XLenVT,
                ValueType vt2 = XLenVT>
    : Pat<(vt1 (OpNode (vt1 GPR:$rs1), (vt2 GPR:$rs2))), (Inst GPR:$rs1, GPR:$rs2)>;
  class PatGprMemGpr<SDPatternOperator OpNode, RVInst Inst, ValueType vt1 = XLenVT,
                ValueType vt2 = XLenVT>
    : Pat<(vt1 (OpNode (vt1 GPRMem:$rs1), (vt2 GPR:$rs2))), (Inst GPRMem:$rs1, GPR:$rs2)>;
  class PatGprMemFpr<SDPatternOperator OpNode, RVInst Inst>
    : Pat<(OpNode GPRMem:$rs1, FPR64:$rs2), (Inst GPRMem:$rs1, FPR64:$rs2)>;

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
    def : PatGprMemGpr<!cast<SDPatternOperator>("forza_amo_r_" # name # "64migr_nn"),
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
    def : Pat<(f16 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "16u") GPRMem:$rs1, FPR16:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "16U") GPRMem:$rs1, FPR16:$rs2)>;
    def : Pat<(f32 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "32u") GPRMem:$rs1, FPR32:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "32U") GPRMem:$rs1, FPR32:$rs2)>;
    def : Pat<(f64 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "64u") GPRMem:$rs1, FPR64:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "64U") GPRMem:$rs1, FPR64:$rs2)>;

    def : Pat<(f16 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "16migr_nn") GPRMem:$rs1, FPR16:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "16MIGRNN") GPRMem:$rs1, FPR16:$rs2)>;
    def : Pat<(f32 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "32migr_nn") GPRMem:$rs1, FPR32:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "32MIGRNN") GPRMem:$rs1, FPR32:$rs2)>;
    def : Pat<(f64 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "64migr_nn") GPRMem:$rs1, FPR64:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "64MIGRNN") GPRMem:$rs1, FPR64:$rs2)>;

    def : Pat<(f16 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "16migr_on") GPRMem:$rs1, FPR16:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "16MIGRON") GPRMem:$rs1, FPR16:$rs2)>;
    def : Pat<(f32 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "32migr_on") GPRMem:$rs1, FPR32:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "32MIGRON") GPRMem:$rs1, FPR32:$rs2)>;
    def : Pat<(f64 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "64migr_on") GPRMem:$rs1, FPR64:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "64MIGRON") GPRMem:$rs1, FPR64:$rs2)>;

    def : Pat<(f16 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "16migr_no") GPRMem:$rs1, FPR16:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "16MIGRNO") GPRMem:$rs1, FPR16:$rs2)>;
    def : Pat<(f32 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "32migr_no") GPRMem:$rs1, FPR32:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "32MIGRNO") GPRMem:$rs1, FPR32:$rs2)>;
    def : Pat<(f64 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "64migr_no") GPRMem:$rs1, FPR64:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "64MIGRNO") GPRMem:$rs1, FPR64:$rs2)>;

    def : Pat<(f16 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "16rem_nn") GPRMem:$rs1, FPR16:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "16REMNN") GPRMem:$rs1, FPR16:$rs2)>;
    def : Pat<(f32 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "32rem_nn") GPRMem:$rs1, FPR32:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "32REMNN") GPRMem:$rs1, FPR32:$rs2)>;
    def : Pat<(f64 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "64rem_nn") GPRMem:$rs1, FPR64:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "64REMNN") GPRMem:$rs1, FPR64:$rs2)>;

    def : Pat<(f16 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "16rem_on") GPRMem:$rs1, FPR16:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "16REMON") GPRMem:$rs1, FPR16:$rs2)>;
    def : Pat<(f32 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "32rem_on") GPRMem:$rs1, FPR32:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "32REMON") GPRMem:$rs1, FPR32:$rs2)>;
    def : Pat<(f64 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "64rem_on") GPRMem:$rs1, FPR64:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "64REMON") GPRMem:$rs1, FPR64:$rs2)>;

    def : Pat<(f16 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "16rem_no") GPRMem:$rs1, FPR16:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "16REMNO") GPRMem:$rs1, FPR16:$rs2)>;
    def : Pat<(f32 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "32rem_no") GPRMem:$rs1, FPR32:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "32REMNO") GPRMem:$rs1, FPR32:$rs2)>;
    def : Pat<(f64 (!cast<SDPatternOperator>("int_riscv_forza_amo_r_" # name # "64rem_no") GPRMem:$rs1, FPR64:$rs2)),
                   (!cast<RVInst>("AMO_R_" # !toupper(name) # "64REMNO") GPRMem:$rs1, FPR64:$rs2)>;
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

  defm "" : ForzaAmoPatGprMemFpr<"fadd">;
  defm "" : ForzaAmoPatGprMemFpr<"fsub">;
  defm "" : ForzaAmoPatGprMemFpr<"fsubr">;

  def : Pat<(int_riscv_forza_quit), (QUIT)>;
  def : Pat<(int_riscv_forza_resched), (RESCHED)>;
  def : Pat<(int_riscv_forza_spawn GPR:$rs1, GPR:$rs2),
            (SPAWN GPR:$rs1, GPR:$rs2)>;
  def : Pat<(int_riscv_forza_mcopy GPRMem:$rs1, GPRMem:$rs2, GPR:$rs3),
            (MCOPY GPRMem:$rs1, GPRMem:$rs2, GPR:$rs3)>;
}
