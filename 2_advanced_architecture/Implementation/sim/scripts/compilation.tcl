vcom -93 -work ./work ../src/constants.vhd
vcom -93 -work ./work ../src/clk_gen.vhd
vcom -93 -work ./work ../src/data_maker.vhd
vcom -93 -work ./work ../src/data_sink.vhd
vcom -93 -work ./work ../src/fd.vhd
vcom -93 -work ./work ../src/reg_n.vhd
vcom -93 -work ./work ../src/filter_adv.vhd
vlog -work ./work ../tb/tb_iir_adv.v

# Start simulation
vsim work.tb_iir
add wave -radix decimal * 

add wave -divider "Internal signals"
add wave -radix decimal sim:/tb_iir/DUT/x
add wave -radix decimal sim:/tb_iir/DUT/w
add wave -radix decimal sim:/tb_iir/DUT/pl1_out(0)
add wave -radix decimal sim:/tb_iir/DUT/pl1_out(1)
add wave -radix decimal sim:/tb_iir/DUT/pl1_out(2)
add wave -radix decimal sim:/tb_iir/DUT/y

run 2150 ns
#run 2200 ns
