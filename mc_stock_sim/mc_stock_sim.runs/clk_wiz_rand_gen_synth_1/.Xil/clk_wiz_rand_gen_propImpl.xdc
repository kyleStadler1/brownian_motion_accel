set_property SRC_FILE_INFO {cfile:c:/Users/kcs-m/Documents/ieee/mc_stock_sim/mc_stock_sim.gen/sources_1/ip/clk_wiz_rand_gen/clk_wiz_rand_gen.xdc rfile:../../../mc_stock_sim.gen/sources_1/ip/clk_wiz_rand_gen/clk_wiz_rand_gen.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
