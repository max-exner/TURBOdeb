connect -url tcp:127.0.0.1:3121
source /homes/mexner/TURBOdeb/turing_bombe_project/vivado/TURBO.sdk/turing_bombe_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A81DFBA"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A81DFBA" && level==0} -index 1
fpga -file /homes/mexner/TURBOdeb/turing_bombe_project/vivado/TURBO.sdk/turing_bombe_wrapper_hw_platform_0/turing_bombe_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A81DFBA"} -index 0
loadhw -hw /homes/mexner/TURBOdeb/turing_bombe_project/vivado/TURBO.sdk/turing_bombe_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A81DFBA"} -index 0
ps7_init
ps7_post_config
configparams force-mem-access 0
