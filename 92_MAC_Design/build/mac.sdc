###################################################################

# Created by write_sdc on Tue Jul 25 14:37:48 2023

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max WCCOM -max_library                               \
fsa0m_a_generic_core_ss1p62v125c\
                         -min BCCOM -min_library                               \
fsa0m_a_generic_core_ff1p98vm40c
set_wire_load_model -name G5K -library fsa0m_a_generic_core_ss1p62v125c
set_load -pin_load 0.1 [get_ports {result[31]}]
set_load -pin_load 0.1 [get_ports {result[30]}]
set_load -pin_load 0.1 [get_ports {result[29]}]
set_load -pin_load 0.1 [get_ports {result[28]}]
set_load -pin_load 0.1 [get_ports {result[27]}]
set_load -pin_load 0.1 [get_ports {result[26]}]
set_load -pin_load 0.1 [get_ports {result[25]}]
set_load -pin_load 0.1 [get_ports {result[24]}]
set_load -pin_load 0.1 [get_ports {result[23]}]
set_load -pin_load 0.1 [get_ports {result[22]}]
set_load -pin_load 0.1 [get_ports {result[21]}]
set_load -pin_load 0.1 [get_ports {result[20]}]
set_load -pin_load 0.1 [get_ports {result[19]}]
set_load -pin_load 0.1 [get_ports {result[18]}]
set_load -pin_load 0.1 [get_ports {result[17]}]
set_load -pin_load 0.1 [get_ports {result[16]}]
set_load -pin_load 0.1 [get_ports {result[15]}]
set_load -pin_load 0.1 [get_ports {result[14]}]
set_load -pin_load 0.1 [get_ports {result[13]}]
set_load -pin_load 0.1 [get_ports {result[12]}]
set_load -pin_load 0.1 [get_ports {result[11]}]
set_load -pin_load 0.1 [get_ports {result[10]}]
set_load -pin_load 0.1 [get_ports {result[9]}]
set_load -pin_load 0.1 [get_ports {result[8]}]
set_load -pin_load 0.1 [get_ports {result[7]}]
set_load -pin_load 0.1 [get_ports {result[6]}]
set_load -pin_load 0.1 [get_ports {result[5]}]
set_load -pin_load 0.1 [get_ports {result[4]}]
set_load -pin_load 0.1 [get_ports {result[3]}]
set_load -pin_load 0.1 [get_ports {result[2]}]
set_load -pin_load 0.1 [get_ports {result[1]}]
set_load -pin_load 0.1 [get_ports {result[0]}]
set_load -pin_load 0.1 [get_ports {protect[7]}]
set_load -pin_load 0.1 [get_ports {protect[6]}]
set_load -pin_load 0.1 [get_ports {protect[5]}]
set_load -pin_load 0.1 [get_ports {protect[4]}]
set_load -pin_load 0.1 [get_ports {protect[3]}]
set_load -pin_load 0.1 [get_ports {protect[2]}]
set_load -pin_load 0.1 [get_ports {protect[1]}]
set_load -pin_load 0.1 [get_ports {protect[0]}]
set_max_fanout 20 [get_ports {instruction[2]}]
set_max_fanout 20 [get_ports {instruction[1]}]
set_max_fanout 20 [get_ports {instruction[0]}]
set_max_fanout 20 [get_ports {multiplier[15]}]
set_max_fanout 20 [get_ports {multiplier[14]}]
set_max_fanout 20 [get_ports {multiplier[13]}]
set_max_fanout 20 [get_ports {multiplier[12]}]
set_max_fanout 20 [get_ports {multiplier[11]}]
set_max_fanout 20 [get_ports {multiplier[10]}]
set_max_fanout 20 [get_ports {multiplier[9]}]
set_max_fanout 20 [get_ports {multiplier[8]}]
set_max_fanout 20 [get_ports {multiplier[7]}]
set_max_fanout 20 [get_ports {multiplier[6]}]
set_max_fanout 20 [get_ports {multiplier[5]}]
set_max_fanout 20 [get_ports {multiplier[4]}]
set_max_fanout 20 [get_ports {multiplier[3]}]
set_max_fanout 20 [get_ports {multiplier[2]}]
set_max_fanout 20 [get_ports {multiplier[1]}]
set_max_fanout 20 [get_ports {multiplier[0]}]
set_max_fanout 20 [get_ports {multiplicand[15]}]
set_max_fanout 20 [get_ports {multiplicand[14]}]
set_max_fanout 20 [get_ports {multiplicand[13]}]
set_max_fanout 20 [get_ports {multiplicand[12]}]
set_max_fanout 20 [get_ports {multiplicand[11]}]
set_max_fanout 20 [get_ports {multiplicand[10]}]
set_max_fanout 20 [get_ports {multiplicand[9]}]
set_max_fanout 20 [get_ports {multiplicand[8]}]
set_max_fanout 20 [get_ports {multiplicand[7]}]
set_max_fanout 20 [get_ports {multiplicand[6]}]
set_max_fanout 20 [get_ports {multiplicand[5]}]
set_max_fanout 20 [get_ports {multiplicand[4]}]
set_max_fanout 20 [get_ports {multiplicand[3]}]
set_max_fanout 20 [get_ports {multiplicand[2]}]
set_max_fanout 20 [get_ports {multiplicand[1]}]
set_max_fanout 20 [get_ports {multiplicand[0]}]
set_max_fanout 20 [get_ports stall]
set_max_fanout 20 [get_ports clk]
set_max_fanout 20 [get_ports reset_n]
create_clock [get_ports clk]  -period 300  -waveform {0 150}
set_clock_latency 0.5  [get_clocks clk]
set_clock_uncertainty 0.1  [get_clocks clk]
set_input_delay -clock clk  5  [get_ports {instruction[2]}]
set_input_delay -clock clk  5  [get_ports {instruction[1]}]
set_input_delay -clock clk  5  [get_ports {instruction[0]}]
set_input_delay -clock clk  5  [get_ports {multiplier[15]}]
set_input_delay -clock clk  5  [get_ports {multiplier[14]}]
set_input_delay -clock clk  5  [get_ports {multiplier[13]}]
set_input_delay -clock clk  5  [get_ports {multiplier[12]}]
set_input_delay -clock clk  5  [get_ports {multiplier[11]}]
set_input_delay -clock clk  5  [get_ports {multiplier[10]}]
set_input_delay -clock clk  5  [get_ports {multiplier[9]}]
set_input_delay -clock clk  5  [get_ports {multiplier[8]}]
set_input_delay -clock clk  5  [get_ports {multiplier[7]}]
set_input_delay -clock clk  5  [get_ports {multiplier[6]}]
set_input_delay -clock clk  5  [get_ports {multiplier[5]}]
set_input_delay -clock clk  5  [get_ports {multiplier[4]}]
set_input_delay -clock clk  5  [get_ports {multiplier[3]}]
set_input_delay -clock clk  5  [get_ports {multiplier[2]}]
set_input_delay -clock clk  5  [get_ports {multiplier[1]}]
set_input_delay -clock clk  5  [get_ports {multiplier[0]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[15]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[14]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[13]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[12]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[11]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[10]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[9]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[8]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[7]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[6]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[5]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[4]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[3]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[2]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[1]}]
set_input_delay -clock clk  5  [get_ports {multiplicand[0]}]
set_input_delay -clock clk  5  [get_ports stall]
set_input_delay -clock clk  5  [get_ports reset_n]
set_output_delay -clock clk  0.5  [get_ports {result[31]}]
set_output_delay -clock clk  0.5  [get_ports {result[30]}]
set_output_delay -clock clk  0.5  [get_ports {result[29]}]
set_output_delay -clock clk  0.5  [get_ports {result[28]}]
set_output_delay -clock clk  0.5  [get_ports {result[27]}]
set_output_delay -clock clk  0.5  [get_ports {result[26]}]
set_output_delay -clock clk  0.5  [get_ports {result[25]}]
set_output_delay -clock clk  0.5  [get_ports {result[24]}]
set_output_delay -clock clk  0.5  [get_ports {result[23]}]
set_output_delay -clock clk  0.5  [get_ports {result[22]}]
set_output_delay -clock clk  0.5  [get_ports {result[21]}]
set_output_delay -clock clk  0.5  [get_ports {result[20]}]
set_output_delay -clock clk  0.5  [get_ports {result[19]}]
set_output_delay -clock clk  0.5  [get_ports {result[18]}]
set_output_delay -clock clk  0.5  [get_ports {result[17]}]
set_output_delay -clock clk  0.5  [get_ports {result[16]}]
set_output_delay -clock clk  0.5  [get_ports {result[15]}]
set_output_delay -clock clk  0.5  [get_ports {result[14]}]
set_output_delay -clock clk  0.5  [get_ports {result[13]}]
set_output_delay -clock clk  0.5  [get_ports {result[12]}]
set_output_delay -clock clk  0.5  [get_ports {result[11]}]
set_output_delay -clock clk  0.5  [get_ports {result[10]}]
set_output_delay -clock clk  0.5  [get_ports {result[9]}]
set_output_delay -clock clk  0.5  [get_ports {result[8]}]
set_output_delay -clock clk  0.5  [get_ports {result[7]}]
set_output_delay -clock clk  0.5  [get_ports {result[6]}]
set_output_delay -clock clk  0.5  [get_ports {result[5]}]
set_output_delay -clock clk  0.5  [get_ports {result[4]}]
set_output_delay -clock clk  0.5  [get_ports {result[3]}]
set_output_delay -clock clk  0.5  [get_ports {result[2]}]
set_output_delay -clock clk  0.5  [get_ports {result[1]}]
set_output_delay -clock clk  0.5  [get_ports {result[0]}]
set_output_delay -clock clk  0.5  [get_ports {protect[7]}]
set_output_delay -clock clk  0.5  [get_ports {protect[6]}]
set_output_delay -clock clk  0.5  [get_ports {protect[5]}]
set_output_delay -clock clk  0.5  [get_ports {protect[4]}]
set_output_delay -clock clk  0.5  [get_ports {protect[3]}]
set_output_delay -clock clk  0.5  [get_ports {protect[2]}]
set_output_delay -clock clk  0.5  [get_ports {protect[1]}]
set_output_delay -clock clk  0.5  [get_ports {protect[0]}]
set_drive 1  [get_ports {instruction[2]}]
set_drive 1  [get_ports {instruction[1]}]
set_drive 1  [get_ports {instruction[0]}]
set_drive 1  [get_ports {multiplier[15]}]
set_drive 1  [get_ports {multiplier[14]}]
set_drive 1  [get_ports {multiplier[13]}]
set_drive 1  [get_ports {multiplier[12]}]
set_drive 1  [get_ports {multiplier[11]}]
set_drive 1  [get_ports {multiplier[10]}]
set_drive 1  [get_ports {multiplier[9]}]
set_drive 1  [get_ports {multiplier[8]}]
set_drive 1  [get_ports {multiplier[7]}]
set_drive 1  [get_ports {multiplier[6]}]
set_drive 1  [get_ports {multiplier[5]}]
set_drive 1  [get_ports {multiplier[4]}]
set_drive 1  [get_ports {multiplier[3]}]
set_drive 1  [get_ports {multiplier[2]}]
set_drive 1  [get_ports {multiplier[1]}]
set_drive 1  [get_ports {multiplier[0]}]
set_drive 1  [get_ports {multiplicand[15]}]
set_drive 1  [get_ports {multiplicand[14]}]
set_drive 1  [get_ports {multiplicand[13]}]
set_drive 1  [get_ports {multiplicand[12]}]
set_drive 1  [get_ports {multiplicand[11]}]
set_drive 1  [get_ports {multiplicand[10]}]
set_drive 1  [get_ports {multiplicand[9]}]
set_drive 1  [get_ports {multiplicand[8]}]
set_drive 1  [get_ports {multiplicand[7]}]
set_drive 1  [get_ports {multiplicand[6]}]
set_drive 1  [get_ports {multiplicand[5]}]
set_drive 1  [get_ports {multiplicand[4]}]
set_drive 1  [get_ports {multiplicand[3]}]
set_drive 1  [get_ports {multiplicand[2]}]
set_drive 1  [get_ports {multiplicand[1]}]
set_drive 1  [get_ports {multiplicand[0]}]
set_drive 1  [get_ports stall]
set_drive 1  [get_ports clk]
set_drive 1  [get_ports reset_n]
