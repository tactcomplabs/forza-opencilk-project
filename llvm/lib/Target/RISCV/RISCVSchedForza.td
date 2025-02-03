//==- RISCVSchedForza.td - Rocket Scheduling Definitions ----*- tablegen -*-=//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

// ===---------------------------------------------------------------------===//
// The following definitions describe the simpler per-operand machine model.
// This works with MachineScheduler. See MCSchedule.h for details.

// Rocket machine model for scheduling and other instruction cost heuristics.
def ForzaModel : SchedMachineModel {
  let MicroOpBufferSize = 0; // Rocket is in-order.
  let IssueWidth = 2;        // 1 micro-op is dispatched per cycle.
  let LoadLatency = 3;
  let MispredictPenalty = 3;
  let CompleteModel = false;
  let UnsupportedFeatures = [HasStdExtZbkb, HasStdExtZbkc, HasStdExtZbkx,
                             HasStdExtZcmt, HasStdExtZknd, HasStdExtZkne,
                             HasStdExtZknh, HasStdExtZksed, HasStdExtZksh,
                             HasStdExtZkr, HasVInstructions, HasVInstructionsI64];
}

//===----------------------------------------------------------------------===//
// Define each kind of processor resource and number available.

// Modeling each pipeline as a ProcResource using the BufferSize = 0 since
// Rocket is in-order.

let BufferSize = 0 in {
def ForzaUnitALU        : ProcResource<1>; // Int ALU
def ForzaUnitIMul       : ProcResource<1>; // Int Multiply
def ForzaUnitMem        : ProcResource<1>; // Load/Store
def ForzaUnitB          : ProcResource<1>; // Branch

def ForzaUnitFPALU      : ProcResource<1>; // FP ALU
}

let BufferSize = 1 in {
def ForzaUnitIDiv       : ProcResource<1>; // Int Division
def ForzaUnitFPDivSqrt  : ProcResource<1>; // FP Divide/Sqrt
}

//===----------------------------------------------------------------------===//

let SchedModel = ForzaModel in {

// Branching
def : WriteRes<WriteJmp, [ForzaUnitB]>;
def : WriteRes<WriteJal, [ForzaUnitB]>;
def : WriteRes<WriteJalr, [ForzaUnitB]>;

// Integer arithmetic and logic
def : WriteRes<WriteIALU32, [ForzaUnitALU]>;
def : WriteRes<WriteIALU, [ForzaUnitALU]>;
def : WriteRes<WriteShiftImm32, [ForzaUnitALU]>;
def : WriteRes<WriteShiftImm, [ForzaUnitALU]>;
def : WriteRes<WriteShiftReg32, [ForzaUnitALU]>;
def : WriteRes<WriteShiftReg, [ForzaUnitALU]>;

// Integer multiplication
let Latency = 4 in {
def : WriteRes<WriteIMul, [ForzaUnitIMul]>;
def : WriteRes<WriteIMul32, [ForzaUnitIMul]>;
}

// Integer division
// Worst case latency is used.
def : WriteRes<WriteIDiv32, [ForzaUnitIDiv]> {
  let Latency = 34;
  let ReleaseAtCycles = [34];
}
def : WriteRes<WriteIDiv, [ForzaUnitIDiv]> {
  let Latency = 33;
  let ReleaseAtCycles = [33];
}

// Memory
def : WriteRes<WriteSTB, [ForzaUnitMem]>;
def : WriteRes<WriteSTH, [ForzaUnitMem]>;
def : WriteRes<WriteSTW, [ForzaUnitMem]>;
def : WriteRes<WriteSTD, [ForzaUnitMem]>;
def : WriteRes<WriteFST32, [ForzaUnitMem]>;
def : WriteRes<WriteFST64, [ForzaUnitMem]>;

let Latency = 3 in {
def : WriteRes<WriteLDB, [ForzaUnitMem]>;
def : WriteRes<WriteLDH, [ForzaUnitMem]>;
}

let Latency = 2 in {
def : WriteRes<WriteLDW, [ForzaUnitMem]>;
def : WriteRes<WriteLDD, [ForzaUnitMem]>;
def : WriteRes<WriteFLD32, [ForzaUnitMem]>;
def : WriteRes<WriteFLD64, [ForzaUnitMem]>;

// Atomic memory
def : WriteRes<WriteAtomicW, [ForzaUnitMem]>;
def : WriteRes<WriteAtomicD, [ForzaUnitMem]>;

def : WriteRes<WriteAtomicLDW, [ForzaUnitMem]>;
def : WriteRes<WriteAtomicLDD, [ForzaUnitMem]>;
}

def : WriteRes<WriteAtomicSTW, [ForzaUnitMem]>;
def : WriteRes<WriteAtomicSTD, [ForzaUnitMem]>;

// Single precision.
let Latency = 4 in {
def : WriteRes<WriteFAdd32, [ForzaUnitFPALU]>;
def : WriteRes<WriteFSGNJ32, [ForzaUnitFPALU]>;
def : WriteRes<WriteFMinMax32, [ForzaUnitFPALU]>;
}

// Double precision
let Latency = 6 in {
def : WriteRes<WriteFAdd64, [ForzaUnitFPALU]>;
def : WriteRes<WriteFSGNJ64, [ForzaUnitFPALU]>;
def : WriteRes<WriteFMinMax64, [ForzaUnitFPALU]>;
}

// Conversions
let Latency = 2 in {
def : WriteRes<WriteFCvtI32ToF32, [ForzaUnitFPALU]>;
def : WriteRes<WriteFCvtI32ToF64, [ForzaUnitFPALU]>;
def : WriteRes<WriteFCvtI64ToF32, [ForzaUnitFPALU]>;
def : WriteRes<WriteFCvtI64ToF64, [ForzaUnitFPALU]>;
def : WriteRes<WriteFCvtF32ToI32, [ForzaUnitFPALU]>;
def : WriteRes<WriteFCvtF32ToI64, [ForzaUnitFPALU]>;
def : WriteRes<WriteFCvtF64ToI32, [ForzaUnitFPALU]>;
def : WriteRes<WriteFCvtF64ToI64, [ForzaUnitFPALU]>;
def : WriteRes<WriteFCvtF32ToF64, [ForzaUnitFPALU]>;
def : WriteRes<WriteFCvtF64ToF32, [ForzaUnitFPALU]>;

def : WriteRes<WriteFClass32, [ForzaUnitFPALU]>;
def : WriteRes<WriteFClass64, [ForzaUnitFPALU]>;
def : WriteRes<WriteFCmp32, [ForzaUnitFPALU]>;
def : WriteRes<WriteFCmp64, [ForzaUnitFPALU]>;
def : WriteRes<WriteFMovF32ToI32, [ForzaUnitFPALU]>;
def : WriteRes<WriteFMovI32ToF32, [ForzaUnitFPALU]>;
def : WriteRes<WriteFMovF64ToI64, [ForzaUnitFPALU]>;
def : WriteRes<WriteFMovI64ToF64, [ForzaUnitFPALU]>;
}

// FP multiplication
let Latency = 5 in {
def : WriteRes<WriteFMul32, [ForzaUnitFPALU]>;
def : WriteRes<WriteFMA32, [ForzaUnitFPALU]>;
}

let Latency = 7 in {
def : WriteRes<WriteFMul64, [ForzaUnitFPALU]>;
def : WriteRes<WriteFMA64, [ForzaUnitFPALU]>;
}

// FP division
// FP division unit on Forza is not pipelined, so set resource cycles to latency.
let Latency = 20, ReleaseAtCycles = [20] in {
def : WriteRes<WriteFDiv32, [ForzaUnitFPDivSqrt]>;
def : WriteRes<WriteFDiv64, [ForzaUnitFPDivSqrt]>;
}

// FP square root unit on Forza is not pipelined, so set resource cycles to latency.
def : WriteRes<WriteFSqrt32, [ForzaUnitFPDivSqrt]> { let Latency = 20;
                                                      let ReleaseAtCycles = [20]; }
def : WriteRes<WriteFSqrt64, [ForzaUnitFPDivSqrt]> { let Latency = 25;
                                                      let ReleaseAtCycles = [25]; }

// Others
def : WriteRes<WriteCSR, []>;
def : WriteRes<WriteNop, []>;

def : InstRW<[WriteIALU], (instrs COPY)>;

//===----------------------------------------------------------------------===//
// Bypass and advance
def : ReadAdvance<ReadJmp, 0>;
def : ReadAdvance<ReadJalr, 0>;
def : ReadAdvance<ReadCSR, 0>;
def : ReadAdvance<ReadStoreData, 0>;
def : ReadAdvance<ReadMemBase, 0>;
def : ReadAdvance<ReadIALU, 0>;
def : ReadAdvance<ReadIALU32, 0>;
def : ReadAdvance<ReadShiftImm, 0>;
def : ReadAdvance<ReadShiftImm32, 0>;
def : ReadAdvance<ReadShiftReg, 0>;
def : ReadAdvance<ReadShiftReg32, 0>;
def : ReadAdvance<ReadIDiv, 0>;
def : ReadAdvance<ReadIDiv32, 0>;
def : ReadAdvance<ReadIMul, 0>;
def : ReadAdvance<ReadIMul32, 0>;
def : ReadAdvance<ReadAtomicWA, 0>;
def : ReadAdvance<ReadAtomicWD, 0>;
def : ReadAdvance<ReadAtomicDA, 0>;
def : ReadAdvance<ReadAtomicDD, 0>;
def : ReadAdvance<ReadAtomicLDW, 0>;
def : ReadAdvance<ReadAtomicLDD, 0>;
def : ReadAdvance<ReadAtomicSTW, 0>;
def : ReadAdvance<ReadAtomicSTD, 0>;
def : ReadAdvance<ReadFStoreData, 0>;
def : ReadAdvance<ReadFMemBase, 0>;
def : ReadAdvance<ReadFAdd32, 0>;
def : ReadAdvance<ReadFAdd64, 0>;
def : ReadAdvance<ReadFMul32, 0>;
def : ReadAdvance<ReadFMul64, 0>;
def : ReadAdvance<ReadFMA32, 0>;
def : ReadAdvance<ReadFMA32Addend, 0>;
def : ReadAdvance<ReadFMA64, 0>;
def : ReadAdvance<ReadFMA64Addend, 0>;
def : ReadAdvance<ReadFDiv32, 0>;
def : ReadAdvance<ReadFDiv64, 0>;
def : ReadAdvance<ReadFSqrt32, 0>;
def : ReadAdvance<ReadFSqrt64, 0>;
def : ReadAdvance<ReadFCmp32, 0>;
def : ReadAdvance<ReadFCmp64, 0>;
def : ReadAdvance<ReadFSGNJ32, 0>;
def : ReadAdvance<ReadFSGNJ64, 0>;
def : ReadAdvance<ReadFMinMax32, 0>;
def : ReadAdvance<ReadFMinMax64, 0>;
def : ReadAdvance<ReadFCvtF32ToI32, 0>;
def : ReadAdvance<ReadFCvtF32ToI64, 0>;
def : ReadAdvance<ReadFCvtF64ToI32, 0>;
def : ReadAdvance<ReadFCvtF64ToI64, 0>;
def : ReadAdvance<ReadFCvtI32ToF32, 0>;
def : ReadAdvance<ReadFCvtI32ToF64, 0>;
def : ReadAdvance<ReadFCvtI64ToF32, 0>;
def : ReadAdvance<ReadFCvtI64ToF64, 0>;
def : ReadAdvance<ReadFCvtF32ToF64, 0>;
def : ReadAdvance<ReadFCvtF64ToF32, 0>;
def : ReadAdvance<ReadFMovF32ToI32, 0>;
def : ReadAdvance<ReadFMovI32ToF32, 0>;
def : ReadAdvance<ReadFMovF64ToI64, 0>;
def : ReadAdvance<ReadFMovI64ToF64, 0>;
def : ReadAdvance<ReadFClass32, 0>;
def : ReadAdvance<ReadFClass64, 0>;

//===----------------------------------------------------------------------===//
// Unsupported extensions
defm : UnsupportedSchedV;
defm : UnsupportedSchedZba;
defm : UnsupportedSchedZbb;
defm : UnsupportedSchedZbc;
defm : UnsupportedSchedZbs;
defm : UnsupportedSchedZbkb;
defm : UnsupportedSchedZbkx;
defm : UnsupportedSchedZfa;
defm : UnsupportedSchedZfh;
defm : UnsupportedSchedSFB;
}
