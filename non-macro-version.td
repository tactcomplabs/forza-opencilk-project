multiclass ForzaAmoPatGprMemGpr<string name> {
  // For '8u' variant
  def : PatGprMemGpr<
    !cast<SDPatternOperator>("forza_amo_r_" # name # "8u"),
    !cast<RVInst>("AMO_R_" # !toupper(name) # "8U"),
    i8, i8>;

  // For '16u' variant
  def : PatGprMemGpr<
    !cast<SDPatternOperator>("forza_amo_r_" # name # "16u"),
    !cast<RVInst>("AMO_R_" # !toupper(name) # "16U"),
    i16, i16>;

  // For '32u' variant
  def : PatGprMemGpr<
    !cast<SDPatternOperator>("forza_amo_r_" # name # "32u"),
    !cast<RVInst>("AMO_R_" # !toupper(name) # "32U"),
    i32, i32>;

  // For '64u' variant
  def : PatGprMemGpr<
    !cast<SDPatternOperator>("forza_amo_r_" # name # "64u"),
    !cast<RVInst>("AMO_R_" # !toupper(name) # "64U"),
    i64, i64>;

  // Repeat similarly for other variants and sizes...
  // 'migr_nn' variants
  def : PatGprMemGpr<
    !cast<SDPatternOperator>("forza_amo_r_" # name # "8migr_nn"),
    !cast<RVInst>("AMO_R_" # !toupper(name) # "8MIGRNN"),
    i8, i8>;

  // Continue with '16migr_nn', '32migr_nn', '64migr_nn'...

  // 'migr_on' variants
  def : PatGprMemGpr<
    !cast<SDPatternOperator>("forza_amo_r_" # name # "8migr_on"),
    !cast<RVInst>("AMO_R_" # !toupper(name) # "8MIGRON"),
    i8, i8>;

  // Continue with '16migr_on', '32migr_on', '64migr_on'...

  // 'migr_no' variants
  def : PatGprMemGpr<
    !cast<SDPatternOperator>("forza_amo_r_" # name # "8migr_no"),
    !cast<RVInst>("AMO_R_" # !toupper(name) # "8MIGRNO"),
    i8, i8>;

  // Continue with '16migr_no', '32migr_no', '64migr_no'...

  // 'rem_nn' variants
  def : PatGprMemGpr<
    !cast<SDPatternOperator>("forza_amo_r_" # name # "8rem_nn"),
    !cast<RVInst>("AMO_R_" # !toupper(name) # "8REMNN"),
    i8, i8>;

  // Continue with '16rem_nn', '32rem_nn', '64rem_nn'...

  // 'rem_on' variants
  def : PatGprMemGpr<
    !cast<SDPatternOperator>("forza_amo_r_" # name # "8rem_on"),
    !cast<RVInst>("AMO_R_" # !toupper(name) # "8REMON"),
    i8, i8>;

  // Continue with '16rem_on', '32rem_on', '64rem_on'...

  // 'rem_no' variants
  def : PatGprMemGpr<
    !cast<SDPatternOperator>("forza_amo_r_" # name # "8rem_no"),
    !cast<RVInst>("AMO_R_" # !toupper(name) # "8REMNO"),
    i8, i8>;

  // Continue with '16rem_no', '32rem_no', '64rem_no'...
}
