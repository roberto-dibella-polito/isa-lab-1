#initializing modelsim
#source /software/scripts/init_msim6.2g.


#record switching activity
vcom -93 -work ./work ../src/constants.vhd
vcom -93 -work ./work ../src/clk_gen.vhd
vcom -93 -work ./work ../src/data_maker.vhd
vcom -93 -work ./work ../src/data_sink.vhd



#To compile the verilog type:
vlog -work ./work ../innovus/filter_adv_routed.v
vlog -work ./work ../tb/tb_iir_adv.v

#Linking to modelsim
vsim -L /software/dk/nangate45/verilog/msim6.2g work.tb_iir

# PROBLEM ON FLIP-FLOP
# It says that the implementation in the library has 5 ports, while our has
# 4 ports. But this problem should be solved by the synthetizer itself!

#Linking the delay file .sdf
vsim -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /tb_iir/DUT=../innovus/filter_adv_routed.sdf work.tb_iir

vcd file ../vcd/design.vcd

vcd add /tb_iir/DUT/*

view wave
add wave *
run 2500 ns










