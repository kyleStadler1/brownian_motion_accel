// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Nov 12 04:09:28 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27440)
`pragma protect data_block
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
ys0VJ8ql2kEm0XBfLBn8SB3YAspwhDY=
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
