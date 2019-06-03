// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jun  3 19:49:07 2019
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
    CE,
    BYPASS,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 bypass_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME bypass_intf, LAYERED_METADATA undef" *) input BYPASS;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire ADD;
  wire [3:0]B;
  wire BYPASS;
  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
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
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "4" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "1" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
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
  wire CE;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
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
        .CE(CE),
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
avN9kpoRxVtCz8rJm5+SQbRhjBMgu9vnn8i0cVocA/mhgi+kiT3lkvCk69udmVmpM/pEi3ZYgn/6
h5r6aPgZ5XHt/NNG9QyqiMEHUNsEs9OLajVoqPZzgwaDcV7uE2tIyIfWzN8phjO+TpjPoVFLeM5N
UT62dR9sl2QuKgRtPp/GFifjlsIEYiSNoenGe6dYSOLe3q+zi7l1dRUoOvpjO5DGGwS6+sFvVjJc
zk5IdAcGY0MajTd4tCz67EVhT+M5miHp+Sod3A6F/4foaDWh5fTm4D+2m//Tukg4Iqa/HCvVYCQa
16XGe2JRIcn/fGLh5ipAwydUuRVwfqTDTdxSHQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
opznmQ3XkqYOBzY09ivUGHeRBi4m++5qcrcHY/uawRtEYNoFGYi/1YMUAyA715+wRXfq+22jp3rj
/hbwbyhbl/SLmNP5aYCVxY54fpP3c5tJrZ2Xx28upaQSpzSDtgtKlUXQUrlPEiMh9bOxMjYA6pP+
wKTPsSpxrOUGrVYis4JD885idEj92ujx5xe2hj/zgkeMFiaKvQ5bThMQSwi/jK1p9z9LWFgcBLSV
jXTsB2iIItVVlX+zUuRIAt4Ea1LVqG16pAXC3jLyBp1Omvyyj95TAVZ0vSI3o0I1gTxz8kwOmLDa
RFv+p5ykmTPKrujcBUWCA92jb/OuiaeAySi0zw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14048)
`pragma protect data_block
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
VKC4f2kxXnYurrxoG2tE29wd0osv4222mJY=
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
