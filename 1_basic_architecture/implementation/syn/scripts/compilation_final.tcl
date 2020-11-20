# Constraints

# Timing constraints
create_clock -name MY_CLK -period 3.4 CLK	
set_dont_touch_network MY_CLK				
set_clock_uncertainty 0.07 [get_clocks MY_CLK]
set_input_delay 0.5 -max -clock MY_CLK [remove_from_collection [all_inputs] CLK]
set_output_delay 0.5 -max -clock MY_CLK [all_outputs]

# Load constraints
set OLOAD [load_of NangateOpenCellLibrary/BUF_X4/A]
set_load $OLOAD [all_outputs]

compile

# Timing & Area report
report_timing > results/timing_clk_3.4.txt
report_area > results/area_with_clk_3.4.txt

# Flattening the hierarchy and change to verilog .
ungroup -all -flatten
change_names -hierarchy -rules verilog
write_sdf ../netlist/iir_filter.sdf
write -f verilog -hierarchy -output ../netlist/Compiler_iir_filter.v
write_sdc ../netlist/iir_filter.sdc

# converting the technology file inot saif file
read_file NangateOpenCellLibrary_typical_ecsm_nowlm.db
lib2saif-out./saif/NangateOpenCellLibrary.saif NangateOpenCellLibrary

#power report 
read_verilog -netlist ./compiler_iir_filter.v
read_saif -input ./saif/compiler_iir_filter_back.saif -instance tb_iir/UUT -unit ns -scale 1
report_power > results/power_report_with_clk_3.4.txt
