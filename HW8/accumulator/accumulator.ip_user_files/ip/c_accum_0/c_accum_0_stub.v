// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jun  3 20:12:33 2019
// Host        : DESKTOP-OB4CG3B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/xoepe/Documents/ECEC302/HW8/accumulator/accumulator.srcs/sources_1/ip/c_accum_0/c_accum_0_stub.v
// Design      : c_accum_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_accum_v12_0_12,Vivado 2018.3" *)
module c_accum_0(B, CLK, ADD, BYPASS, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="B[3:0],CLK,ADD,BYPASS,SCLR,Q[7:0]" */;
  input [3:0]B;
  input CLK;
  input ADD;
  input BYPASS;
  input SCLR;
  output [7:0]Q;
endmodule
