# aclk {FREQ_HZ 100000000 CLK_DOMAIN turing_bombe_CLK PHASE 0.000}
# Clock Domain: turing_bombe_CLK
create_clock -name aclk -period 10,000 [get_ports aclk]
# Generated clocks
