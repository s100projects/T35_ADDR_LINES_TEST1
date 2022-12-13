
# Efinity Interface Designer SDC
# Version: 2022.1.226
# Date: 2022-12-12 22:54

# Copyright (C) 2017 - 2022 Efinix Inc. All rights reserved.

# Device: T35F400
# Project: T35_ADDR_LINES_TEST1
# Timing Model: C4 (final)

# PLL Constraints
#################
create_clock -period 500.0000 pll0_2MHz

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {clockIn}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {clockIn}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {n_reset}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {n_reset}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {F_bus_ctl_oe}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {F_bus_ctl_oe}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDS[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDS[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDS[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDS[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDS[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDS[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDS[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDS[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDS[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDS[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDS[5]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDS[5]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDS[6]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDS[6]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDS[7]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDS[7]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[5]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[5]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[6]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[6]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7_dp}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7_dp}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {sMWRT}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {sMWRT}]

# LVDS RX GPIO Constraints
############################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {n_boardReset}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {n_boardReset}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {boardActive}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {boardActive}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {n_pWR}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {n_pWR}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {pDBIN}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {pDBIN}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {pSTVAL}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {pSTVAL}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {pSYNC}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {pSYNC}]

# LVDS Rx Constraints
####################

# LVDS TX GPIO Constraints
############################
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {F_add_oe}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {F_add_oe}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {F_bus_stat_oe}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {F_bus_stat_oe}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[5]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[5]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[6]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[6]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[7]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[7]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[8]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[8]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[9]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[9]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[10]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[10]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[11]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[11]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[12]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[12]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[13]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[13]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[14]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[14]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[15]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[15]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr16_19[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr16_19[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr16_19[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr16_19[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr16_19[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr16_19[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr16_19[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr16_19[3]}]

# LVDS Tx Constraints
####################
