//===- IntrinsicsRISCVXForza.td - Forza intrinsics ---------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file defines all of the FORZA vendor intrinsics for RISC-V.
//
//===----------------------------------------------------------------------===//

let TargetPrefix = "riscv" in {
  class ForzaAMOInt32Intrinsic
      :  DefaultAttrsIntrinsic<[llvm_i32_ty], [llvm_ptr_ty, llvm_i32_ty],
                               [IntrWillReturn, IntrSpeculatable]>;
  class ForzaAMOInt64Intrinsic
      : DefaultAttrsIntrinsic<[llvm_i64_ty], [llvm_ptr_ty, llvm_i64_ty],
                              [IntrWillReturn, IntrSpeculatable]>;
  class ForzaAMOFloat32Intrinsic
      : DefaultAttrsIntrinsic<[llvm_float_ty], [llvm_ptr_ty, llvm_float_ty],
                              [IntrWillReturn, IntrSpeculatable]>;
  class ForzaAMOFloat64Intrinsic
      : DefaultAttrsIntrinsic<[llvm_double_ty], [llvm_ptr_ty, llvm_double_ty],
                              [IntrWillReturn, IntrSpeculatable]>;

  def int_riscv_forza_amo_r_add32u : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_and32u : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_or32u : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_xor32u : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smax32u : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umax32u : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smin32u : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umin32u : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_swap32u : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_cas032u : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_fadd32u : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsub32u : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsubr32u : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_thrs32u : ForzaAMOInt32Intrinsic;
} // TargetPrefix = "riscv"
