-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Jan  6 01:33:30 2026
-- Host        : kcsZenbook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/kcs-m/Documents/ieee/mc_stock_sim/mc_stock_sim.gen/sources_1/ip/clk_wiz_rand_gen/clk_wiz_rand_gen_stub.vhdl
-- Design      : clk_wiz_rand_gen
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_rand_gen is
  Port ( 
    clk_default : out STD_LOGIC;
    clk_fast : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end clk_wiz_rand_gen;

architecture stub of clk_wiz_rand_gen is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_default,clk_fast,reset,locked,clk_in1";
begin
end;
