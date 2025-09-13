/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`include "rnd.v"
`default_nettype none

module tt_um_SNPU (
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,   // Dedicated outputs
  input  wire [7:0] uio_in,   // IOs: Input path
  output wire [7:0] uio_out,  // IOs: Output path
  output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
  input  wire       ena,      // always 1 when the design is powered, so you can ignore it
  input  wire       clk,      // clock
  input  wire       rst_n     // reset_n - low to reset
);
  // assign uio_oe  = 0;
  assign uio_oe  = 1; // use io pins as outputs

  funky_rnd rnd00 (.G(ui_in[0]),.R(uo_out[0]));
  funky_rnd rnd01 (.G(ui_in[0]),.R(uo_out[1]));
  funky_rnd rnd02 (.G(ui_in[0]),.R(uo_out[2]));
  funky_rnd rnd03 (.G(ui_in[0]),.R(uo_out[3]));
  funky_rnd rnd04 (.G(ui_in[0]),.R(uo_out[4]));
  funky_rnd rnd05 (.G(ui_in[0]),.R(uo_out[5]));
  funky_rnd rnd06 (.G(ui_in[0]),.R(uo_out[6]));
  funky_rnd rnd07 (.G(ui_in[0]),.R(uo_out[7]));

  funky_rnd rnd10 (.G(ui_in[0]),.R(uio_out[0]));
  funky_rnd rnd11 (.G(ui_in[0]),.R(uio_out[1]));
  funky_rnd rnd12 (.G(ui_in[0]),.R(uio_out[2]));
  funky_rnd rnd13 (.G(ui_in[0]),.R(uio_out[3]));
  funky_rnd rnd14 (.G(ui_in[0]),.R(uio_out[4]));
  funky_rnd rnd15 (.G(ui_in[0]),.R(uio_out[5]));
  funky_rnd rnd16 (.G(ui_in[0]),.R(uio_out[6]));
  funky_rnd rnd17 (.G(ui_in[0]),.R(uio_out[7]));

  wire _unused = &{uio_in,clk,rst_n,ena, 1'b0};
endmodule
