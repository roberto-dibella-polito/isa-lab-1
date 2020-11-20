#initializing modelsim
#source /software/scripts/init_msim6.2g.


#record switching activity
#vcom -93 -work ./work ../tb/constants.vhd
#vcom -93 -work ./work ../tb/clk_gen.vhd
#vcom -93 -work ./work ../tb/data_maker.vhd
#vcom -93 -work ./work ../tb/data_sink.vhd
#vcom -93 -work ./work ../tb/fd.vhd
#vcom -93 -work ./work ../tb/reg_n.vhd
#vcom -93 -work ./work ../tb/filter_adv.vhd


#To compile the verilog type:
vlog -work ./work ../netlist/iir_filter_adv.v
vlog -work ./work ../tb/tb_iir_adv.v

