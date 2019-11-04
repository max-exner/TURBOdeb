# aclk {FREQ_HZ 50000000 CLK_DOMAIN turing_bombe_final_CLK PHASE 0.000}
# Clock Domain: turing_bombe_final_CLK
create_clock -name aclk -period 20,000 [get_ports aclk]
# Generated clocks
