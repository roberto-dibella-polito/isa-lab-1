#initializing modelsim
#source /software/scripts/init_msim6.2g.

vlib work

#record switching activity
vcom -93 -work ./work ../src/constants.vhd
vcom -93 -work ./work ../src/clk_gen.vhd
vcom -93 -work ./work ../src/data_maker.vhd
vcom -93 -work ./work ../src/data_sink_syn.vhd



#To compile the verilog type:
vlog -work ./work ../netlist/iir_filter.v
vlog -work ./work ../tb/tb_iir.v

#Linking to modelsim
vsim -L /software/dk/nangate45/verilog/msim6.2g work.tb_iir

# PROBLEM ON FLIP-FLOP
# It says that the implementation in the library has 5 ports, while our has
# 4 ports. But this problem should be solved by the synthetizer itself!

#Linking the delay file .sdf
vsim -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /tb_iir/DUT=../netlist/iir_filter.sdf work.tb_iir

vcd file ../vcd/iir_filter_syn.vcd

vcd add /tb_iir/DUT/*

view wave
add wave *
run 2500 ns

#vcd2saif -input ../vcd/iir_filter_syn.vcd -output ../saif/iir_filter_syn.saif











