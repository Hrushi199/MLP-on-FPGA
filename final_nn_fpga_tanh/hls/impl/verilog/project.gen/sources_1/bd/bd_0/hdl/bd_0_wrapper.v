//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Tue Nov 25 01:23:19 2025
//Host        : unnath-popos running 64-bit Pop!_OS 24.04 LTS
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_rst,
    image_idx,
    led_out);
  input ap_clk;
  input ap_rst;
  input [3:0]image_idx;
  output [3:0]led_out;

  wire ap_clk;
  wire ap_rst;
  wire [3:0]image_idx;
  wire [3:0]led_out;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .image_idx(image_idx),
        .led_out(led_out));
endmodule
