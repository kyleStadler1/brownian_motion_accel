// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jan  5 13:14:43 2026
// Host        : kcsZenbook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/kcs-m/Documents/ieee/mc_stock_sim/mc_stock_sim.gen/sources_1/ip/fp32_fp16/fp32_fp16_sim_netlist.v
// Design      : fp32_fp16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fp32_fp16,floating_point_v7_1_15,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "floating_point_v7_1_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module fp32_fp16
   (aclk,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    m_axis_result_tvalid,
    m_axis_result_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) input s_axis_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) output m_axis_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [15:0]m_axis_result_tdata;

  wire aclk;
  wire [15:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire NLW_inst_m_axis_result_tlast_UNCONNECTED;
  wire NLW_inst_s_axis_a_tready_UNCONNECTED;
  wire NLW_inst_s_axis_b_tready_UNCONNECTED;
  wire NLW_inst_s_axis_c_tready_UNCONNECTED;
  wire NLW_inst_s_axis_operation_tready_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_result_tuser_UNCONNECTED;

  (* C_ACCUM_INPUT_MSB = "32" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "24" *) 
  (* C_A_TDATA_WIDTH = "32" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "24" *) 
  (* C_B_TDATA_WIDTH = "32" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "24" *) 
  (* C_C_TDATA_WIDTH = "32" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "0" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_PRIMITIVE_A = "0" *) 
  (* C_HAS_ACCUMULATOR_PRIMITIVE_S = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "0" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "0" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
  (* C_HAS_FLT_TO_FLT = "1" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "0" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ACCUMULATOR_A = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ACCUMULATOR_S = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ADD = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_SUB = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MULT_USAGE = "0" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_PART = "xc7s50csga324-1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "11" *) 
  (* C_RESULT_TDATA_WIDTH = "16" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "16" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  fp32_fp16_floating_point_v7_1_15 inst
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .m_axis_result_tdata(m_axis_result_tdata),
        .m_axis_result_tlast(NLW_inst_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_inst_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_inst_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_inst_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b0),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_inst_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_inst_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mmOvRnJo0hx7+PqMGu3YoWxrEBYAxAdZi1zk+yzEFiZIJMjePV38Oa31uE0BaogpqUs7AS9njISN
GZXX2Xcd9eCF9tXyfpnThXpwLDha12v0ZRAsGKJHWGpBuDMZg6FXSDy2oeRxKIQMa0luoKI0vLk0
yZbC4dlqmTYczcsfIuQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fc8cpYYv5vI/H3z7pnHmVqePZADreJdu3RKVQcBi8nZYms7mT9oN5x0NgM+DUuXRd1Z7x8HYKYeE
kFyxlHaCo/HIJiqVA+2bOXqsng8BbIFNN+FiN3UgJaewkE9dTJVd/ROEVhqxJON57Tx6IVhV0WmJ
cWPYhMeEYFid4FpJ0H3xsk+KcoW4L+xz+/UK9Z+xiowEJep7aUN038Ga9jglCTb40A35B8+G1HZS
h9D3sOXIpp8/2ejcwVIcjIhUkppN+xHEnunW6OkL9vh91/NWQS/u+lphwOKOX+WDuHIngd1xnvKt
+i5AmVHnptjvzDMKlW6nFgNnkugxOVQma/k9HQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DUm+EfBkI7e/sY7EMLDsRVZLuEfIgjt3sfz7ShHtswxkS45dBAv5l/yiKPu9/6DM/iz80pGT45/K
2/hjeTM9CVgsalBokhtLjhdSW6RJFxVp6ZKD9jR7RvDnnrEaAJd+02jPK9YzTdRbTzm0sMHn5mLU
ztqja0MbixEZImt/93U=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L0pKmZTGbWTdrIwcHYZ2dWbmD42xIJQXnGlG8XhayhBFtlOYgMREvK9vlHyPS4Isiz6mTW2yh6Qv
OPeDuapEOxbUo7SjK03RgNomPPKnMz5ZpZ4FfhJ56GCAA426m/cAckB5Ni0EugOisw15S0O3/HKb
qWmEcBkcQksqvkCitstRfS8T9LvOXQXTpDNIeo+gEPlQmIe7mfCp8xAJ5TzZDXLLRsK7lSeDj6qp
FCzCOerPsmRxTazCLJBRiRlMrDyjDjq2SYXmTSicf939s/rv31mpdYo4WdsKpJp1c9z8BxTjK1/x
pFKn1uL9i5TBnnp2PTTzxJgbND1J9nSw36/6CQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4qHn9m5I5jLdIM/fNCqj608HG58k8mMnLL06oke1tI/TPvZ4Kl/RtSd3S+PLIQKxCTyojQBz/kAO
QIzZweo20v/r7iTHLCrsHEXDtFvI78WHwMbz9lg9BDszKLVO+U7VGTdmQrQC9aeYX/M0r/2qDSi1
WycGOpmo3WneDM6hA+pcMjs+byYGYKKNcRISNPkEblobug+u53AdSy7+DOQmJrXef1lUjI6L7/HK
hUtNHd3Qx/d5CwEC58xLAeM2kn57vUXKlTSUsUjVVEol3T7lv84kKHb5yrrcb8lHxV2IojdMO2o1
n9v7EbOJK/7G3Osc9osF+JcJad6wPIsa46INFw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ETbRXS7YQk/Ygxv+Qi9wEi7T+hk+MEMZI95u/c2eFw/pb27fXDUGP48hiMfCyAWlfuwwUH3fQPbz
khlm0LIUo6Xael/yAbJaAcaV66Am02ja53+YiCngXT9RVFQyefaIP/7YcAcFRYW3SxQK5rpXQeBK
Mj9avK2LlvOh+LjIUDQUUQnoZ0qftB72dPfopDt7GDpONMtf8aFY7I2aMTiQLt6NDkPJ5avK+R1b
rLXyWH898NyGxmRWkl0zw0637JVrYNxDIRPMv0uA3ujUDE5JX4TnBweHtgPk6MyO2/pikczw2iP3
l9uU2u8K1wHGqYv32+CcE2yLLNDxLF+4zBT/8g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DGTJq6GIxpJpCyrcF3lPti11wrEojytsyrjbNsuQDbI/UwSi2ip7dvKR7MkXC8HGDqQ5vPbQSOuR
UY3Xniav28PBFc2qZMK07SKE02Z5QhaTju1tIy6ACa8GVuTGGquCC58NNupc4u/zPB+HeQTXDlrW
r3YrSeCS3VSSwjICQ8HL9+z9e4LSbJtq65BiAlS8V7qn/ENrhwkPWY5FPdBs9Y+C3UdMV/xI5IAA
a8hqPWQswv9vZDRxH/dXI+eklyMbwzbwRZCV1KTx5P5t5VUhFXDehns8OcYJoO7M8kmK7MIpsw2P
2diAjrDolQU/urY1X7gEiYnz3/3fdkLF9ARawQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
MqYYWpi5cUKxeqegUOZ/FE71PbGIeBKRaebYLZrsAQMHxp7rX2HLBfghj8DkaLpBvFZsRe3QHQKz
7J1EMjkJRnAZ99lDMCh1BUBj9yoG3aflK5SgQS3f8wlsLqzxJQbBRYVv77/LYvZT2OjIBhwl+6FU
aRzgPT7kw+CouWg5nRmaPHQpuF7RDIGYw3iAEgHi5JqIhbys9ADrgHdVkby+d1nfJ1QzimhoiEDF
nR2tfpELYmQO6yMjac1NMKwqamfGQ7sv7BCChIwYRvW9l2fN2Yp+2i05nuVSfAyEHC9Z7nSdSPmO
kwN5VI8z8fnBCE/0cAwavWW8BKo3rvlv6KOQXDuNYHOmb8oArzgg3a5htizGcx9BfdyK/+3Pd7u5
iNn4SGpLSWsRwMYQcGbNHsXPsWpEiVtHxs06Tc1S9Arn09eWIggn++2/3CDDG+nYQrcSlMaKtTmX
rbG7zsJpirzPDalNQh3HiAK+ZU+lVyaiMY86sPq6VhY43uq9Z78kF01R

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j8OUn7H0onPT0+ubA7jLFo+cW7C6hcKI39ZZ2/bHcowL1pbZqDp3KOJxwRqSNOB7aXQ3QKJvcel+
COdVz2X4+AsoLGzifagtsIFiRDNQ2ivmE7jUyJmsfO8F1cLTi2Ezd8szMAP9Q4wvU8Vazm4bGNLk
NceiyiGaMhtt4pPVY4RvuoRdCt3Ic9/usyfgfyjZSgIqc+oT36/FtQPznhXEiWcoc3P3rILT1LfZ
lFz11X3JH70rU3hNTPjhbmy4OtvUpx0hqViwWvMIOHoDuS1aqZegrgD/qnOb+XPD4U3gzoaEu1oj
KOFl4N48DoB8AvG8tlxSJLWw7OYcwucfAsGsGw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GPKSWzuiK9wHOuCCrVw+kl9xceWKw48RgeowtIJA3rSc7eY/paI5030bPNRMzqAvTfqXSRBfgClc
eYILLWucLdUpZrUWRUUVR3Kc34GvxGDy5II4otkTTR5/Pb/TTgyZ6OzcvZISNTv9M4wr0JgSm/wt
9icv3CicsxPAsTOGXuEuvnYqYTADh9/ILwDEy6zWHbuvMzvJrnO/OMftc4f6dXzrHUmRKtwPGRmn
KehIUM9Xk0bPZs7okpsDtp0R/CUEhxRZPhQXJ9crYovKktfEVj67UtbvUpVG2co2Mog36H0YFVSI
n0qJRavrgVAkkya0xD+gUohrF7w95uRI/X4cbw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YOxg0NlizX9ZvvY9Qyda4WGxzI02dyMd8NmzZdbu6mqlAn15W4kv0NuSHyHv7bYPzOIY4pwkrh1F
9cN+KwU8kji6BbyW8K9Mtxl9K4Fb+ipGWHubM/p+a1aTrZTB+hxduy3C0vOjGq8ihj3NKFgx9oZn
Obf8yOCalwhIeUphtEZ2q/OVEls7NgeeqXLceIyUoUN1lbsgPe5BGRZLTOYUljNZ0NtHpT2bqvw7
4Fvp4KQjaoIcteTpZIXX37kVIZxNvZNOuVKLdUH1qjO55fHEGxw7jldU+mksEPUp6zzOEnpF7ZAk
bGbXuif2xoElNegl5f4RnuZd6jgEcJXO6WhsWw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70960)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
