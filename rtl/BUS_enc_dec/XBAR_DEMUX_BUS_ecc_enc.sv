// Copyright 2021 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.
// 
// Adds SECDED ECC to XBAR_DEMUX_BUS

module XBAR_DEMUX_BUS_ecc_enc #(
  localparam int unsigned DataWidth = 32 // Currently will only work for 32
) (
  XBAR_DEMUX_BUS.Slave  bus_in,     // DATA_WIDTH=32
  XBAR_DEMUX_BUS.Master bus_out,    // DATA_WIDTH=39
  output logic [   6:0] syndrome_o,
  output logic [   1:0] err_o
);
`ifndef TARGET_SYNTHESIS
  if (bus_in.DATA_WIDTH != 32) $fatal("Ensure bus_in DATA_WIDTH");
  if (bus_out.DATA_WIDTH != 39) $fatal("Ensure bus_out DATA_WIDTH");
`endif

  assign bus_out.barrier     = bus_in.barrier;
  assign bus_out.exec_cancel = bus_in.exec_cancel;
  assign bus_out.exec_stall  = bus_in.exec_stall;
  assign bus_out.req         = bus_in.req;
  assign bus_out.add         = bus_in.add;
  assign bus_out.we          = bus_in.we;
  assign bus_out.be          = bus_in.be;
  assign bus_out.r_gnt       = bus_in.r_gnt;

  assign bus_in.busy         = bus_out.busy;
  assign bus_in.gnt          = bus_out.gnt;
  assign bus_in.r_valid      = bus_out.r_valid;

  prim_secded_39_32_enc ecc_encode (
    .in  ( bus_in.wdata  ),
    .out ( bus_out.wdata )
  );

  prim_secded_39_32_dec ecc_decode (
    .in         ( bus_out.r_rdata ),
    .d_o        ( bus_in.r_rdata  ),
    .syndrome_o ( syndrome_o      ),
    .err_o      ( err_o           )
  );

endmodule
