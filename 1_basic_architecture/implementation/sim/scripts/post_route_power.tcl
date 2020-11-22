#record switching activity
vcom -93 -work ./work ../src/constants.vhd
vcom -93 -work ./work ../src/clk_gen.vhd
vcom -93 -work ./work ../src/data_maker.vhd
vcom -93 -work ./work ../src/data_sink_syn.vhd

#To compile the verilog type:
vlog -work ./work ../innovus/filter.v
vlog -work ./work ../tb/tb_iir.v


vsim -L /software/dk/nangate45/verilog/msim6.2g work.tb_iir

#Linking the delay file .sdf
vsim -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /tb_iir/DUT=../innovus/filter.sdf work.tb_iir

vcd file ../vcd/design.vcd

vcd add /tb_iir/DUT/*

view wave
add wave *
run 2500 ns
