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
  class ForzaAMOInt8Intrinsic
      :  DefaultAttrsIntrinsic<[llvm_i8_ty], [llvm_ptr_ty, llvm_i8_ty],
                               [IntrWillReturn, IntrHasSideEffects]>;
  class ForzaAMOInt16Intrinsic
      :  DefaultAttrsIntrinsic<[llvm_i16_ty], [llvm_ptr_ty, llvm_i16_ty],
                               [IntrWillReturn, IntrHasSideEffects]>;
  class ForzaAMOInt32Intrinsic
      :  DefaultAttrsIntrinsic<[llvm_i32_ty], [llvm_ptr_ty, llvm_i32_ty],
                               [IntrWillReturn, IntrHasSideEffects]>;
  class ForzaAMOInt64Intrinsic
      : DefaultAttrsIntrinsic<[llvm_i64_ty], [llvm_ptr_ty, llvm_i64_ty],
                              [IntrWillReturn, IntrHasSideEffects]>;

  class ForzaAMOInt8UIntrinsic
      :  DefaultAttrsIntrinsic<[], [llvm_ptr_ty, llvm_i8_ty],
                               [IntrHasSideEffects]>;
  class ForzaAMOInt16UIntrinsic
      :  DefaultAttrsIntrinsic<[], [llvm_ptr_ty, llvm_i16_ty],
                               [IntrHasSideEffects]>;
  class ForzaAMOInt32UIntrinsic
      :  DefaultAttrsIntrinsic<[], [llvm_ptr_ty, llvm_i32_ty],
                               [IntrHasSideEffects]>;
  class ForzaAMOInt64UIntrinsic
      : DefaultAttrsIntrinsic<[], [llvm_ptr_ty, llvm_i64_ty],
                              [IntrHasSideEffects]>;

  class ForzaAMOFloat16Intrinsic
      : DefaultAttrsIntrinsic<[llvm_half_ty], [llvm_ptr_ty, llvm_half_ty],
                              [IntrWillReturn, IntrHasSideEffects]>;
  class ForzaAMOFloat32Intrinsic
      : DefaultAttrsIntrinsic<[llvm_float_ty], [llvm_ptr_ty, llvm_float_ty],
                              [IntrWillReturn, IntrHasSideEffects]>;
  class ForzaAMOFloat64Intrinsic
      : DefaultAttrsIntrinsic<[llvm_double_ty], [llvm_ptr_ty, llvm_double_ty],
                              [IntrWillReturn, IntrHasSideEffects]>;

  class ForzaAMOFloat16UIntrinsic
      : DefaultAttrsIntrinsic<[], [llvm_ptr_ty, llvm_half_ty],
                              [IntrHasSideEffects]>;
  class ForzaAMOFloat32UIntrinsic
      : DefaultAttrsIntrinsic<[], [llvm_ptr_ty, llvm_float_ty],
                              [IntrHasSideEffects]>;
  class ForzaAMOFloat64UIntrinsic
      : DefaultAttrsIntrinsic<[], [llvm_ptr_ty, llvm_double_ty],
                              [IntrHasSideEffects]>;

  class ForzaThreadIIntrinsic
      : DefaultAttrsIntrinsic<[], [],
                              [IntrHasSideEffects]>;
  class ForzaSpawnIntrinsic
      : DefaultAttrsIntrinsic<[llvm_i64_ty], [llvm_ptr_ty, llvm_ptr_ty],
                              [IntrWillReturn, IntrHasSideEffects]>;
  class ForzaMCopyIntrinsic
      : DefaultAttrsIntrinsic<[], [llvm_ptr_ty, llvm_ptr_ty, llvm_i64_ty],
                              [IntrHasSideEffects]>;
  class ForzaFenceIntrinsic
      : DefaultAttrsIntrinsic<[], [],
                              [IntrNoMem,IntrHasSideEffects]>;

  def int_riscv_forza_amo_r_add8u : ForzaAMOInt8UIntrinsic;
  def int_riscv_forza_amo_r_and8u : ForzaAMOInt8UIntrinsic;
  def int_riscv_forza_amo_r_or8u : ForzaAMOInt8UIntrinsic;
  def int_riscv_forza_amo_r_xor8u : ForzaAMOInt8UIntrinsic;
  def int_riscv_forza_amo_r_smax8u : ForzaAMOInt8UIntrinsic;
  def int_riscv_forza_amo_r_umax8u : ForzaAMOInt8UIntrinsic;
  def int_riscv_forza_amo_r_smin8u : ForzaAMOInt8UIntrinsic;
  def int_riscv_forza_amo_r_umin8u : ForzaAMOInt8UIntrinsic;
  def int_riscv_forza_amo_r_swap8u : ForzaAMOInt8UIntrinsic;
  def int_riscv_forza_amo_r_thrs8u : ForzaAMOInt8UIntrinsic;

  def int_riscv_forza_amo_r_add16u : ForzaAMOInt16UIntrinsic;
  def int_riscv_forza_amo_r_and16u : ForzaAMOInt16UIntrinsic;
  def int_riscv_forza_amo_r_or16u : ForzaAMOInt16UIntrinsic;
  def int_riscv_forza_amo_r_xor16u : ForzaAMOInt16UIntrinsic;
  def int_riscv_forza_amo_r_smax16u : ForzaAMOInt16UIntrinsic;
  def int_riscv_forza_amo_r_umax16u : ForzaAMOInt16UIntrinsic;
  def int_riscv_forza_amo_r_smin16u : ForzaAMOInt16UIntrinsic;
  def int_riscv_forza_amo_r_umin16u : ForzaAMOInt16UIntrinsic;
  def int_riscv_forza_amo_r_swap16u : ForzaAMOInt16UIntrinsic;
  def int_riscv_forza_amo_r_thrs16u : ForzaAMOInt16UIntrinsic;

  def int_riscv_forza_amo_r_add32u : ForzaAMOInt32UIntrinsic;
  def int_riscv_forza_amo_r_and32u : ForzaAMOInt32UIntrinsic;
  def int_riscv_forza_amo_r_or32u : ForzaAMOInt32UIntrinsic;
  def int_riscv_forza_amo_r_xor32u : ForzaAMOInt32UIntrinsic;
  def int_riscv_forza_amo_r_smax32u : ForzaAMOInt32UIntrinsic;
  def int_riscv_forza_amo_r_umax32u : ForzaAMOInt32UIntrinsic;
  def int_riscv_forza_amo_r_smin32u : ForzaAMOInt32UIntrinsic;
  def int_riscv_forza_amo_r_umin32u : ForzaAMOInt32UIntrinsic;
  def int_riscv_forza_amo_r_swap32u : ForzaAMOInt32UIntrinsic;
  def int_riscv_forza_amo_r_thrs32u : ForzaAMOInt32UIntrinsic;

  def int_riscv_forza_amo_r_add64u : ForzaAMOInt64UIntrinsic;
  def int_riscv_forza_amo_r_and64u : ForzaAMOInt64UIntrinsic;
  def int_riscv_forza_amo_r_or64u : ForzaAMOInt64UIntrinsic;
  def int_riscv_forza_amo_r_xor64u : ForzaAMOInt64UIntrinsic;
  def int_riscv_forza_amo_r_smax64u : ForzaAMOInt64UIntrinsic;
  def int_riscv_forza_amo_r_umax64u : ForzaAMOInt64UIntrinsic;
  def int_riscv_forza_amo_r_smin64u : ForzaAMOInt64UIntrinsic;
  def int_riscv_forza_amo_r_umin64u : ForzaAMOInt64UIntrinsic;
  def int_riscv_forza_amo_r_swap64u : ForzaAMOInt64UIntrinsic;
  def int_riscv_forza_amo_r_thrs64u : ForzaAMOInt64UIntrinsic;

  def int_riscv_forza_amo_r_add8migr_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_and8migr_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_or8migr_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_xor8migr_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_smax8migr_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_umax8migr_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_smin8migr_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_umin8migr_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_swap8migr_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_thrs8migr_nn : ForzaAMOInt8Intrinsic;

  def int_riscv_forza_amo_r_add16migr_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_and16migr_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_or16migr_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_xor16migr_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_smax16migr_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_umax16migr_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_smin16migr_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_umin16migr_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_swap16migr_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_thrs16migr_nn : ForzaAMOInt16Intrinsic;

  def int_riscv_forza_amo_r_add32migr_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_and32migr_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_or32migr_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_xor32migr_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smax32migr_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umax32migr_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smin32migr_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umin32migr_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_swap32migr_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_thrs32migr_nn : ForzaAMOInt32Intrinsic;

  def int_riscv_forza_amo_r_add64migr_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_and64migr_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_or64migr_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_xor64migr_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_smax64migr_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_umax64migr_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_smin64migr_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_umin64migr_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_swap64migr_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_thrs64migr_nn : ForzaAMOInt64Intrinsic;

  def int_riscv_forza_amo_r_add8migr_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_and8migr_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_or8migr_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_xor8migr_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_smax8migr_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_umax8migr_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_smin8migr_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_umin8migr_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_swap8migr_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_thrs8migr_on : ForzaAMOInt8Intrinsic;

  def int_riscv_forza_amo_r_add16migr_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_and16migr_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_or16migr_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_xor16migr_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_smax16migr_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_umax16migr_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_smin16migr_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_umin16migr_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_swap16migr_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_thrs16migr_on : ForzaAMOInt16Intrinsic;

  def int_riscv_forza_amo_r_add32migr_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_and32migr_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_or32migr_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_xor32migr_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smax32migr_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umax32migr_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smin32migr_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umin32migr_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_swap32migr_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_thrs32migr_on : ForzaAMOInt32Intrinsic;

  def int_riscv_forza_amo_r_add64migr_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_and64migr_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_or64migr_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_xor64migr_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_smax64migr_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_umax64migr_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_smin64migr_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_umin64migr_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_swap64migr_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_thrs64migr_on : ForzaAMOInt64Intrinsic;

  def int_riscv_forza_amo_r_add8migr_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_and8migr_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_or8migr_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_xor8migr_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_smax8migr_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_umax8migr_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_smin8migr_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_umin8migr_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_swap8migr_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_thrs8migr_no : ForzaAMOInt8Intrinsic;

  def int_riscv_forza_amo_r_add16migr_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_and16migr_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_or16migr_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_xor16migr_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_smax16migr_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_umax16migr_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_smin16migr_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_umin16migr_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_swap16migr_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_thrs16migr_no : ForzaAMOInt16Intrinsic;

  def int_riscv_forza_amo_r_add32migr_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_and32migr_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_or32migr_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_xor32migr_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smax32migr_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umax32migr_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smin32migr_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umin32migr_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_swap32migr_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_thrs32migr_no : ForzaAMOInt32Intrinsic;

  def int_riscv_forza_amo_r_add64migr_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_and64migr_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_or64migr_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_xor64migr_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_smax64migr_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_umax64migr_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_smin64migr_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_umin64migr_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_swap64migr_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_thrs64migr_no : ForzaAMOInt64Intrinsic;

  def int_riscv_forza_amo_r_add8rem_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_and8rem_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_or8rem_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_xor8rem_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_smax8rem_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_umax8rem_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_smin8rem_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_umin8rem_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_swap8rem_nn : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_thrs8rem_nn : ForzaAMOInt8Intrinsic;

  def int_riscv_forza_amo_r_add16rem_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_and16rem_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_or16rem_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_xor16rem_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_smax16rem_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_umax16rem_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_smin16rem_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_umin16rem_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_swap16rem_nn : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_thrs16rem_nn : ForzaAMOInt16Intrinsic;

  def int_riscv_forza_amo_r_add32rem_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_and32rem_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_or32rem_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_xor32rem_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smax32rem_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umax32rem_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smin32rem_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umin32rem_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_swap32rem_nn : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_thrs32rem_nn : ForzaAMOInt32Intrinsic;

  def int_riscv_forza_amo_r_add64rem_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_and64rem_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_or64rem_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_xor64rem_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_smax64rem_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_umax64rem_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_smin64rem_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_umin64rem_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_swap64rem_nn : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_thrs64rem_nn : ForzaAMOInt64Intrinsic;

  def int_riscv_forza_amo_r_add8rem_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_and8rem_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_or8rem_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_xor8rem_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_smax8rem_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_umax8rem_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_smin8rem_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_umin8rem_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_swap8rem_on : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_thrs8rem_on : ForzaAMOInt8Intrinsic;

  def int_riscv_forza_amo_r_add16rem_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_and16rem_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_or16rem_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_xor16rem_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_smax16rem_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_umax16rem_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_smin16rem_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_umin16rem_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_swap16rem_on : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_thrs16rem_on : ForzaAMOInt16Intrinsic;

  def int_riscv_forza_amo_r_add32rem_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_and32rem_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_or32rem_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_xor32rem_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smax32rem_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umax32rem_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smin32rem_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umin32rem_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_swap32rem_on : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_thrs32rem_on : ForzaAMOInt32Intrinsic;

  def int_riscv_forza_amo_r_add64rem_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_and64rem_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_or64rem_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_xor64rem_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_smax64rem_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_umax64rem_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_smin64rem_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_umin64rem_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_swap64rem_on : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_thrs64rem_on : ForzaAMOInt64Intrinsic;

  def int_riscv_forza_amo_r_add8rem_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_and8rem_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_or8rem_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_xor8rem_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_smax8rem_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_umax8rem_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_smin8rem_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_umin8rem_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_swap8rem_no : ForzaAMOInt8Intrinsic;
  def int_riscv_forza_amo_r_thrs8rem_no : ForzaAMOInt8Intrinsic;

  def int_riscv_forza_amo_r_add16rem_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_and16rem_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_or16rem_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_xor16rem_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_smax16rem_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_umax16rem_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_smin16rem_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_umin16rem_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_swap16rem_no : ForzaAMOInt16Intrinsic;
  def int_riscv_forza_amo_r_thrs16rem_no : ForzaAMOInt16Intrinsic;

  def int_riscv_forza_amo_r_add32rem_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_and32rem_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_or32rem_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_xor32rem_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smax32rem_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umax32rem_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_smin32rem_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_umin32rem_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_swap32rem_no : ForzaAMOInt32Intrinsic;
  def int_riscv_forza_amo_r_thrs32rem_no : ForzaAMOInt32Intrinsic;

  def int_riscv_forza_amo_r_add64rem_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_and64rem_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_or64rem_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_xor64rem_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_smax64rem_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_umax64rem_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_smin64rem_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_umin64rem_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_swap64rem_no : ForzaAMOInt64Intrinsic;
  def int_riscv_forza_amo_r_thrs64rem_no : ForzaAMOInt64Intrinsic;

  def int_riscv_forza_amo_r_fadd16u : ForzaAMOFloat16UIntrinsic;
  def int_riscv_forza_amo_r_fsub16u : ForzaAMOFloat16UIntrinsic;
  def int_riscv_forza_amo_r_fsubr16u : ForzaAMOFloat16UIntrinsic;
  def int_riscv_forza_amo_r_fadd32u : ForzaAMOFloat32UIntrinsic;
  def int_riscv_forza_amo_r_fsub32u : ForzaAMOFloat32UIntrinsic;
  def int_riscv_forza_amo_r_fsubr32u : ForzaAMOFloat32UIntrinsic;
  def int_riscv_forza_amo_r_fadd64u : ForzaAMOFloat64UIntrinsic;
  def int_riscv_forza_amo_r_fsub64u : ForzaAMOFloat64UIntrinsic;
  def int_riscv_forza_amo_r_fsubr64u : ForzaAMOFloat64UIntrinsic;

  def int_riscv_forza_amo_r_fadd16migr_nn : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fsub16migr_nn : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fsubr16migr_nn : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fadd32migr_nn : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsub32migr_nn : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsubr32migr_nn : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fadd64migr_nn : ForzaAMOFloat64Intrinsic;
  def int_riscv_forza_amo_r_fsub64migr_nn : ForzaAMOFloat64Intrinsic;
  def int_riscv_forza_amo_r_fsubr64migr_nn : ForzaAMOFloat64Intrinsic;

  def int_riscv_forza_amo_r_fadd16migr_on : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fsub16migr_on : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fsubr16migr_on : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fadd32migr_on : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsub32migr_on : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsubr32migr_on : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fadd64migr_on : ForzaAMOFloat64Intrinsic;
  def int_riscv_forza_amo_r_fsub64migr_on : ForzaAMOFloat64Intrinsic;
  def int_riscv_forza_amo_r_fsubr64migr_on : ForzaAMOFloat64Intrinsic;

  def int_riscv_forza_amo_r_fadd16migr_no : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fsub16migr_no : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fsubr16migr_no : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fadd32migr_no : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsub32migr_no : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsubr32migr_no : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fadd64migr_no : ForzaAMOFloat64Intrinsic;
  def int_riscv_forza_amo_r_fsub64migr_no : ForzaAMOFloat64Intrinsic;
  def int_riscv_forza_amo_r_fsubr64migr_no : ForzaAMOFloat64Intrinsic;

  def int_riscv_forza_amo_r_fadd16rem_nn : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fsub16rem_nn : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fsubr16rem_nn : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fadd32rem_nn : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsub32rem_nn : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsubr32rem_nn : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fadd64rem_nn : ForzaAMOFloat64Intrinsic;
  def int_riscv_forza_amo_r_fsub64rem_nn : ForzaAMOFloat64Intrinsic;
  def int_riscv_forza_amo_r_fsubr64rem_nn : ForzaAMOFloat64Intrinsic;

  def int_riscv_forza_amo_r_fadd16rem_on : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fsub16rem_on : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fsubr16rem_on : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fadd32rem_on : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsub32rem_on : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsubr32rem_on : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fadd64rem_on : ForzaAMOFloat64Intrinsic;
  def int_riscv_forza_amo_r_fsub64rem_on : ForzaAMOFloat64Intrinsic;
  def int_riscv_forza_amo_r_fsubr64rem_on : ForzaAMOFloat64Intrinsic;

  def int_riscv_forza_amo_r_fadd16rem_no : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fsub16rem_no : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fsubr16rem_no : ForzaAMOFloat16Intrinsic;
  def int_riscv_forza_amo_r_fadd32rem_no : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsub32rem_no : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fsubr32rem_no : ForzaAMOFloat32Intrinsic;
  def int_riscv_forza_amo_r_fadd64rem_no : ForzaAMOFloat64Intrinsic;
  def int_riscv_forza_amo_r_fsub64rem_no : ForzaAMOFloat64Intrinsic;
  def int_riscv_forza_amo_r_fsubr64rem_no : ForzaAMOFloat64Intrinsic;

  def int_riscv_forza_quit : ForzaThreadIIntrinsic;
  def int_riscv_forza_resched : ForzaThreadIIntrinsic;
  def int_riscv_forza_spawn : ForzaSpawnIntrinsic;
  def int_riscv_forza_mcopy : ForzaMCopyIntrinsic;
  def int_riscv_forza_fence : ForzaFenceIntrinsic;
} // TargetPrefix = "riscv"
