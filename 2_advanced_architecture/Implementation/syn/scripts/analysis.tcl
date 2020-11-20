# Import files into Design Compiler: ANALYZE
# analyze -f vhdl -lib WORK ../src/<file name>.vhd

analyze -f vhdl -lib WORK ../src/constants.vhd
analyze -f vhdl -lib WORK ../src/fd.vhd
analyze -f vhdl -lib WORK ../src/reg_n.vhd
analyze -f vhdl -lib WORK ../src/filter_adv.vhd

set power_preserve_rtl_hier_names true

elaborate filter_adv -arch bhv -lib WORK > ./elaborate.txt
uniquify
link


