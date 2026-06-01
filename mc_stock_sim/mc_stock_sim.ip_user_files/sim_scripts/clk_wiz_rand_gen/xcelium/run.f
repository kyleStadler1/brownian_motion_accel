-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mc_stock_sim.gen/sources_1/ip/clk_wiz_rand_gen/clk_wiz_rand_gen_clk_wiz.v" \
  "../../../../mc_stock_sim.gen/sources_1/ip/clk_wiz_rand_gen/clk_wiz_rand_gen.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

