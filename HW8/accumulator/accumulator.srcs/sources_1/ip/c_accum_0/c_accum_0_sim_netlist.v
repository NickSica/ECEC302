// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jun  3 20:12:33 2019
// Host        : DESKTOP-OB4CG3B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/xoepe/Documents/ECEC302/HW8/accumulator/accumulator.srcs/sources_1/ip/c_accum_0/c_accum_0_sim_netlist.v
// Design      : c_accum_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_accum_0,c_accum_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_accum_0
   (B,
    CLK,
    ADD,
    BYPASS,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 bypass_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME bypass_intf, LAYERED_METADATA undef" *) input BYPASS;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire ADD;
  wire [3:0]B;
  wire BYPASS;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_add_mode = "2" *) 
  (* c_b_type = "0" *) 
  (* c_b_width = "4" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "1" *) 
  (* c_has_c_in = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "8" *) 
  (* c_scale = "0" *) 
  (* c_verbosity = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_accum_0_c_accum_v12_0_12 U0
       (.ADD(ADD),
        .B(B),
        .BYPASS(BYPASS),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "4" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "1" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_OUT_WIDTH = "8" *) 
(* C_SCALE = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_accum_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_accum_0_c_accum_v12_0_12
   (B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output [7:0]Q;

  wire ADD;
  wire [3:0]B;
  wire BYPASS;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_add_mode = "2" *) 
  (* c_b_type = "0" *) 
  (* c_b_width = "4" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "1" *) 
  (* c_has_c_in = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "8" *) 
  (* c_scale = "0" *) 
  (* c_verbosity = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_accum_0_c_accum_v12_0_12_viv i_synth
       (.ADD(ADD),
        .B(B),
        .BYPASS(BYPASS),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
R2WRfNM7iQfVezffU9mXj7DNae56tUQw2KSdDdI4OGMYB65JnERrwsR2dRInx7o7wH1Brw7ehdso
AxemvL19bQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
umbbDadnux1HIv/f5nt3od0S8xUq+jhzaSGi+5TlPeW6L931zufNZnEKGpZodz45bXX8TxhW8JI3
J12xUnskyRF5krUTBcSoqcMJr8/06+d4nJHedF3WjWnW1gHzNmrJoEUYRigH104FnWzebk1isRIr
uCSdAzalikXhTX0SEiY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aTp1eCjrnU1khDqTWy5d+cZDPSAuxQwnTycBPO6Y1aMzqpnXGjhvaNSjYXFh2XSlHbf4EwbDRXqU
K1fW9WBj/U213OBYmro12wgQzjA1GAmNMXMBq4GK1HGbW169XARW9nfzhl95a9jV6qi506hsEK67
g67p6VIHSrgUnhkZ7ez3DpVagtvsGEae3GAFNgKRL9EVO49cxteh3tlOPfgwheDs9USfBIdfa+yB
QV+scaeiQVLOFvXl8t/kTdLx9lEicWLFzNKOE2sVSGZgPvd7fUwZ+y8EtoKTrXzK44aVJvVOiD6m
vTmmSUPCpRj5wl+f0jclvvc86ycqX4gvC3iA9g==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XM69JFnplXxalOK99DHcsVHn16k5x1wa/VRdDOR58eYORKM0EfVwK0CqBgG8xVMVulfojxFdppHa
yGzaeL+A8AqbG1w70JWFTru1upLFxJuozxX2AsOo3ewr3ws7tRDZVMoI+uwVgZ+8VyIB/p71YZL7
rWcStJAJWwPmo7JMDVGi7O7lywBtA5r9pDxBRPh6eYRuaLxSllrJAj4FkFA7JbGriJzj3vSrW+sP
7Zs9EBsxbXI75gcdVEvJbPoDfHmbsViPVMyQOXi7zo5w4MNf/nCnJadJLRYnPM6TgOZRxGY9i6Bu
y7FVhmgG241mQi5/8FcBdJy6U+4iQZJHbfZXYQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h7a3PoBXWVyoTzWRLpoXTe52cvA8XSFHzkgYj56I8Df/WDYXD99No7bXQK2NnBnU2QTR0UtLY1nm
c3Ca0F55BQ2WArsbuUl9g6xAtyCfQkQrh3iw3CCTKKVgac4/wGTyWAL71gLKQ/587QYPX1oiFHop
E1F8SfYj739DqBTi/GIHwLA5G+XRYBT9KgQMBbliiHiRNCD35p7ZrngSX7j5x5Zyef78BbsLpSN6
nfBLa5KhSRE+anTpxCjDOtMId/PIp8ggvAFfA96aXOGMlF9WOfoTzYIHSU56BvDQJlUYzJzWD8vZ
HdQZe6g1qfOyVcETeM9SLE9f18G/ypg/cJO46Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hcaOEOxV9amYvmRV9jFkhRHpbu8mNofSGci7o22h0i4J4+5anRkzdXz5ihgmJJ70fzRge/ZpF33A
xGQdRLzSOJnx/0BXHpYpJZmNIHZSMZ623YSrTvEuvaf9YdF7lNT2gUcY1z138BwEKukso1UEBSoj
d5NwAziWrdV5rD1He1s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
X2Xllt9uFeKr6FIBXnJCIzB/ea5RHsUZWPGsJj5FMTHs70YYPxMdlvhX5fMq+3zwRnGLBh2AXlMP
62zwKGikYjtmAJgWsxVxeIAfmLNIoWeJDb3CXVosgoqn1IqFssNWNDKdTGYe9MYTkqRd6QW6R2GX
BnNBdOhSsi2zKr2+y+xqOwoH7yi8jopYEdPIrgHJT58LYcR3uUtM88nga0M2yiwOK20+2btxZLos
JeF6J82bC9r9xvEViWwuspHvhE8eSkL6x7eqB+OIOpF3PFLbV8OmAoKkOBmTuulR3Jj8MFacFgZM
Bvy/68az8+wRddG+v+zCI368BrObIO1JMPpnGw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fOYRxuQqxZrNItxLtvzGKOuE2dZVEFPr3IJaoUSGltxb3t9AdvZZK5qSk+W7GYY3H/Up9Q2Lcem+
O1LqNcKokptO3DAjq7pfAOH2wjN9Dg7qPyGEZk5QCUvg3tAdDuKPU8sjWP2v3XmHZTa7IRCYS3rW
DRLh7yU/i6vuNrr/NsIuZ/PuaFZZGVmgVLo8W4KjkZIPHF5Mcsa401gt3sDTTaQiZu48ukKiQva6
2Nja0A1vseEvLjzZv0CC30KdOY9wa3Vf73QIlOeDe1MkDjEvZkbngC1ODvxRiXGFl2FA8u0Tk2LD
NuyReT7Y3aytXytnD1CbUpshHEp+ZK+5Zk30SQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AZcnzonvMl9VmBhb7Cu4LenSv+w7tetQBtJpAbw981WSeiAZV4D8/VWZy/QYn3Pzb1v7uKb9TKBZ
7tuELvnmy/Kiie2hFUWRtJZODEfQxTSflPzFQXCaF2HTyDE/v3mBIjOoFv3VDWHpjgZkm9QzoUok
RBSqLVEL+BDNCbgTYyXrwAcyAOucGT5TbX075LIhf7It2QWmIpXF1I1aV2MeQcS2U/vsNbYzVyK7
ZdPGLCCIxwbQyIddX+NwZH81Nj6TuhwVxL1tZfvDtmxNoyNrtKypOWop5B5jyb+NZ87eHLHX6Z47
WE8QhGKP9drj0u15IO1Bh7owAujJtLGgsOIgXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13616)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
