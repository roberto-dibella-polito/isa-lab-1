vlib work

vcom -93 -work ./work ../src/constants.vhd
vcom -93 -work ./work ../src/clk_gen.vhd
vcom -93 -work ./work ../src/data_maker.vhd
vcom -93 -work ./work ../src/data_sink.vhd
vcom -93 -work ./work ../src/fd.vhd
vcom -93 -work ./work ../src/reg_n.vhd
vcom -93 -work ./work ../src/filter.vhd
vlog -work ./work ../tb/tb_iir.v

# Start simulation
vsim work.tb_iir
add wave -radix decimal * 
add wave -divider "Internal signals"
add wave -radix decimal sim:/tb_iir/DUT/x
add wave -radix decimal sim:/tb_iir/DUT/w
add wave -radix decimal sim:/tb_iir/DUT/y

run 2200 ns
