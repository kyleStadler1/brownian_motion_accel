// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Nov 12 04:09:29 2025
// Host        : kcsZenbook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/kcs-m/Documents/ieee/mc_stock_sim/mc_stock_sim.gen/sources_1/ip/cdf_rom/cdf_rom_sim_netlist.v
// Design      : cdf_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cdf_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module cdf_rom
   (clka,
    addra,
    douta,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]douta;
  wire [31:0]doutb;
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
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
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
  cdf_rom_blk_mem_gen_v8_4_5 U0
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
        .ena(1'b0),
        .enb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27360)
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
