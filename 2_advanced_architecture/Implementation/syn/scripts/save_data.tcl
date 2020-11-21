# Flattening the hierarchy and change to verilog .
ungroup -all -flatten
change_names -hierarchy -rules verilog
write_sdf ../netlist/iir_filter_adv.sdf
write -f verilog -hierarchy -output ../netlist/iir_filter_adv.v
write_sdc ../netlist/iir_filter_adv.sdc

