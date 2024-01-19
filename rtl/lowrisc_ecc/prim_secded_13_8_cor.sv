// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// SECDED Corrector generated by
// util/design/secded_gen.py -m 5 -k 8 -s 1592631616 -c hsiao

module prim_secded_13_8_cor (
  input        [12:0] d_i,
  output logic [12:0] d_o,
  output logic [4:0] syndrome_o,
  output logic [1:0] err_o
);

  logic single_error;

  // Syndrome calculation
  assign syndrome_o[0] = ^(d_i & 13'h016B);
  assign syndrome_o[1] = ^(d_i & 13'h02AD);
  assign syndrome_o[2] = ^(d_i & 13'h04D5);
  assign syndrome_o[3] = ^(d_i & 13'h0836);
  assign syndrome_o[4] = ^(d_i & 13'h10DA);

  // Corrected output calculation
  assign d_o[0] = (syndrome_o == 5'h7) ^ d_i[0];
  assign d_o[1] = (syndrome_o == 5'h19) ^ d_i[1];
  assign d_o[2] = (syndrome_o == 5'he) ^ d_i[2];
  assign d_o[3] = (syndrome_o == 5'h13) ^ d_i[3];
  assign d_o[4] = (syndrome_o == 5'h1c) ^ d_i[4];
  assign d_o[5] = (syndrome_o == 5'hb) ^ d_i[5];
  assign d_o[6] = (syndrome_o == 5'h15) ^ d_i[6];
  assign d_o[7] = (syndrome_o == 5'h16) ^ d_i[7];
  assign d_o[8] = (syndrome_o == 5'h1) ^ d_i[8];
  assign d_o[9] = (syndrome_o == 5'h2) ^ d_i[9];
  assign d_o[10] = (syndrome_o == 5'h4) ^ d_i[10];
  assign d_o[11] = (syndrome_o == 5'h8) ^ d_i[11];
  assign d_o[12] = (syndrome_o == 5'h10) ^ d_i[12];

  // err_o calc. bit0: single error, bit1: double error
  assign single_error = ^syndrome_o;
  assign err_o[0] = single_error;
  assign err_o[1] = ~single_error & (|syndrome_o);

endmodule : prim_secded_13_8_cor
