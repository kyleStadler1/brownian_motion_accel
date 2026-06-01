// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Nov 12 03:41:29 2025
// Host        : kcsZenbook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cdf_rom_sim_netlist.v
// Design      : cdf_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cdf_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.244 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "cdf_rom.mem" *) 
  (* C_INIT_FILE_NAME = "cdf_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27984)
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
