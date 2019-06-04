// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jun  3 20:12:32 2019
// Host        : DESKTOP-OB4CG3B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_accum_0_sim_netlist.v
// Design      : c_accum_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_accum_0,c_accum_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_12
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_12_viv i_synth
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
B5r8j+YLzcwVz+iq6SQD+WPURpWrx/EjlMQLCCcrk82PA4M2AA9H9V0O4M+WzDCdmJ/kfsmr4SYi
//IrZZyT7ggTBZg96uXtJBwk2k9iiHlxdXTVztHylLyTuYW7iKcsOGY/fYXDcj9QtY3Aif5A7HWu
GWYXJhgw9TiCmO9ukCiBFLdxvITGt9xuR20Uh0fyvYaG2ngyOG7phhrCVrI4h2vOKxI/o9GksAC6
w51IQnZH2jO+taQiUqvWnzpDyGKuFA+bwfohRNxernnrebRyQnoqqV6p4dFsyWRpStkb5J0AVjQT
yYymZr/j5eMiknOZm0RYmautf72RdPiZdSwqYg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U95oQlsrG43MpdTCixkA+rldASeRkRPVhuNRTWfb20kIgdwMl9pDj3ydhqmj+yl8GZcBuE+PWgjk
xKRyXdoQnYK+ErPJs9CkvlyJV8Ywoba18m8tVExR4uMwjzAGGdcbovBaIAHLtRy0DpjX5d+g+twW
hTSao6C3lD55N/dXUDwiL67Hjg4RIRhRezl+ZIMjhoj7dldV9MLLLYaOSfP/4GmwYBG9vXu9jpk7
rvXmx2G74+eZbb0ncrHq+hMGBZnq6yNgoavBHeFT7cP1MA7xxR8dlTI1Oj6zGd8SnyBZaqnOD4rD
NpCPx0CWkhzIAVYIbgcF/hG60ZLDeSJLU/solw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13664)
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
