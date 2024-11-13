// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package hmr_dmr_regs_reg_pkg;

  // Address widths within the block
  parameter int BlockAw = 4;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////

  typedef struct packed {
    logic        q;
    logic        qe;
  } hmr_dmr_regs_reg2hw_dmr_enable_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } rapid_recovery;
    struct packed {
      logic        q;
      logic        qe;
    } force_recovery;
  } hmr_dmr_regs_reg2hw_dmr_config_reg_t;

  typedef struct packed {
    logic [31:0] q;
    logic        qe;
  } hmr_dmr_regs_reg2hw_checkpoint_addr_reg_t;

  typedef struct packed {
    logic        d;
    logic        de;
  } hmr_dmr_regs_hw2reg_dmr_enable_reg_t;

  typedef struct packed {
    struct packed {
      logic        d;
      logic        de;
    } rapid_recovery;
    struct packed {
      logic        d;
      logic        de;
    } force_recovery;
  } hmr_dmr_regs_hw2reg_dmr_config_reg_t;

  typedef struct packed {
    logic [31:0] d;
    logic        de;
  } hmr_dmr_regs_hw2reg_checkpoint_addr_reg_t;

  // Register -> HW type
  typedef struct packed {
    hmr_dmr_regs_reg2hw_dmr_enable_reg_t dmr_enable; // [38:37]
    hmr_dmr_regs_reg2hw_dmr_config_reg_t dmr_config; // [36:33]
    hmr_dmr_regs_reg2hw_checkpoint_addr_reg_t checkpoint_addr; // [32:0]
  } hmr_dmr_regs_reg2hw_t;

  // HW -> register type
  typedef struct packed {
    hmr_dmr_regs_hw2reg_dmr_enable_reg_t dmr_enable; // [38:37]
    hmr_dmr_regs_hw2reg_dmr_config_reg_t dmr_config; // [36:33]
    hmr_dmr_regs_hw2reg_checkpoint_addr_reg_t checkpoint_addr; // [32:0]
  } hmr_dmr_regs_hw2reg_t;

  // Register offsets
  parameter logic [BlockAw-1:0] HMR_DMR_REGS_DMR_ENABLE_OFFSET = 4'h 0;
  parameter logic [BlockAw-1:0] HMR_DMR_REGS_DMR_CONFIG_OFFSET = 4'h 4;
  parameter logic [BlockAw-1:0] HMR_DMR_REGS_CHECKPOINT_ADDR_OFFSET = 4'h 8;

  // Register index
  typedef enum int {
    HMR_DMR_REGS_DMR_ENABLE,
    HMR_DMR_REGS_DMR_CONFIG,
    HMR_DMR_REGS_CHECKPOINT_ADDR
  } hmr_dmr_regs_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] HMR_DMR_REGS_PERMIT [3] = '{
    4'b 0001, // index[0] HMR_DMR_REGS_DMR_ENABLE
    4'b 0001, // index[1] HMR_DMR_REGS_DMR_CONFIG
    4'b 1111  // index[2] HMR_DMR_REGS_CHECKPOINT_ADDR
  };

endpackage
