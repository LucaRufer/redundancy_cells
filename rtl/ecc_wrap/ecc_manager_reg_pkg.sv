// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package ecc_manager_reg_pkg;

  // Address widths within the block
  parameter int BlockAw = 5;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////

  typedef struct packed {
    logic [31:0] q;
  } ecc_manager_reg2hw_mismatch_count_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } ecc_manager_reg2hw_scrub_interval_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } ecc_manager_reg2hw_scrub_fix_count_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } ecc_manager_reg2hw_scrub_uncorrectable_count_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } ecc_manager_reg2hw_write_mask_data_n_reg_t;

  typedef struct packed {
    logic [6:0]  q;
  } ecc_manager_reg2hw_write_mask_ecc_n_reg_t;

  typedef struct packed {
    logic [31:0] d;
    logic        de;
  } ecc_manager_hw2reg_mismatch_count_reg_t;

  typedef struct packed {
    logic [31:0] d;
    logic        de;
  } ecc_manager_hw2reg_scrub_fix_count_reg_t;

  typedef struct packed {
    logic [31:0] d;
    logic        de;
  } ecc_manager_hw2reg_scrub_uncorrectable_count_reg_t;

  // Register -> HW type
  typedef struct packed {
    ecc_manager_reg2hw_mismatch_count_reg_t mismatch_count; // [166:135]
    ecc_manager_reg2hw_scrub_interval_reg_t scrub_interval; // [134:103]
    ecc_manager_reg2hw_scrub_fix_count_reg_t scrub_fix_count; // [102:71]
    ecc_manager_reg2hw_scrub_uncorrectable_count_reg_t scrub_uncorrectable_count; // [70:39]
    ecc_manager_reg2hw_write_mask_data_n_reg_t write_mask_data_n; // [38:7]
    ecc_manager_reg2hw_write_mask_ecc_n_reg_t write_mask_ecc_n; // [6:0]
  } ecc_manager_reg2hw_t;

  // HW -> register type
  typedef struct packed {
    ecc_manager_hw2reg_mismatch_count_reg_t mismatch_count; // [98:66]
    ecc_manager_hw2reg_scrub_fix_count_reg_t scrub_fix_count; // [65:33]
    ecc_manager_hw2reg_scrub_uncorrectable_count_reg_t scrub_uncorrectable_count; // [32:0]
  } ecc_manager_hw2reg_t;

  // Register offsets
  parameter logic [BlockAw-1:0] ECC_MANAGER_MISMATCH_COUNT_OFFSET = 5'h 0;
  parameter logic [BlockAw-1:0] ECC_MANAGER_SCRUB_INTERVAL_OFFSET = 5'h 4;
  parameter logic [BlockAw-1:0] ECC_MANAGER_SCRUB_FIX_COUNT_OFFSET = 5'h 8;
  parameter logic [BlockAw-1:0] ECC_MANAGER_SCRUB_UNCORRECTABLE_COUNT_OFFSET = 5'h c;
  parameter logic [BlockAw-1:0] ECC_MANAGER_WRITE_MASK_DATA_N_OFFSET = 5'h 10;
  parameter logic [BlockAw-1:0] ECC_MANAGER_WRITE_MASK_ECC_N_OFFSET = 5'h 14;

  // Register index
  typedef enum int {
    ECC_MANAGER_MISMATCH_COUNT,
    ECC_MANAGER_SCRUB_INTERVAL,
    ECC_MANAGER_SCRUB_FIX_COUNT,
    ECC_MANAGER_SCRUB_UNCORRECTABLE_COUNT,
    ECC_MANAGER_WRITE_MASK_DATA_N,
    ECC_MANAGER_WRITE_MASK_ECC_N
  } ecc_manager_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] ECC_MANAGER_PERMIT [6] = '{
    4'b 1111, // index[0] ECC_MANAGER_MISMATCH_COUNT
    4'b 1111, // index[1] ECC_MANAGER_SCRUB_INTERVAL
    4'b 1111, // index[2] ECC_MANAGER_SCRUB_FIX_COUNT
    4'b 1111, // index[3] ECC_MANAGER_SCRUB_UNCORRECTABLE_COUNT
    4'b 1111, // index[4] ECC_MANAGER_WRITE_MASK_DATA_N
    4'b 0001  // index[5] ECC_MANAGER_WRITE_MASK_ECC_N
  };

endpackage

