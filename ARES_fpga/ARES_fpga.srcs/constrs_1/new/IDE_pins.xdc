#B47
set_property PACKAGE_PIN V13 [get_ports {ide_d[0]}]
#B41
set_property PACKAGE_PIN W11 [get_ports {ide_d[1]}]
#B35
set_property PACKAGE_PIN AA9 [get_ports {ide_d[2]}]
#B29
set_property PACKAGE_PIN Y18 [get_ports {ide_d[3]}]
#B23
set_property PACKAGE_PIN AA19 [get_ports {ide_d[4]}]
#B17
set_property PACKAGE_PIN V17 [get_ports {ide_d[5]}]
#B11
set_property PACKAGE_PIN P16 [get_ports {ide_d[6]}]
#B5
set_property PACKAGE_PIN P14 [get_ports {ide_d[7]}]

#B3
set_property PACKAGE_PIN R14 [get_ports {ide_d[8]}]
#B9
set_property PACKAGE_PIN R17 [get_ports {ide_d[9]}]
#B15
set_property PACKAGE_PIN W17 [get_ports {ide_d[10]}]
#B21
set_property PACKAGE_PIN AB20 [get_ports {ide_d[11]}]
#B27
set_property PACKAGE_PIN Y19 [get_ports {ide_d[12]}]
#B33
set_property PACKAGE_PIN AB10 [get_ports {ide_d[13]}]
#B39
set_property PACKAGE_PIN W12 [get_ports {ide_d[14]}]
#B45
set_property PACKAGE_PIN V14 [get_ports {ide_d[15]}]

#B69
set_property PACKAGE_PIN AB13 [get_ports {ide_a[0]}]
#B59
set_property PACKAGE_PIN AB11 [get_ports {ide_a[1]}]
#B65
set_property PACKAGE_PIN AA10 [get_ports {ide_a[2]}]

#B71
set_property PACKAGE_PIN AA13 [get_ports {ide_cs0_n}]
#B77
set_property PACKAGE_PIN Y13 [get_ports {ide_cs1_n}]

#B51
set_property PACKAGE_PIN W10 [get_ports {ide_wr_n}]
#B53
set_property PACKAGE_PIN V10 [get_ports {ide_rd_n}]

#B57
set_property PACKAGE_PIN AB12 [get_ports {ide_dtack}]
#B63
set_property PACKAGE_PIN AA11 [get_ports {ide_irq}]
#B75
set_property PACKAGE_PIN AA14 [get_ports {ide_reset_n}]

set_property IOSTANDARD LVCMOS33 [get_ports {ide_d[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ide_a[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ide_cs0_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {ide_cs1_n}]

set_property IOSTANDARD LVCMOS33 [get_ports {ide_wr_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {ide_rd_n}]

set_property IOSTANDARD LVCMOS33 [get_ports {ide_dtack}]
set_property IOSTANDARD LVCMOS33 [get_ports {ide_irq}]
set_property IOSTANDARD LVCMOS33 [get_ports {ide_reset_n}]

# Asynchronous CF IRQ: exclude only the path into the first synchronizer
# stage. The path from cf_irq_meta to cf_irq_sync must remain timed.
set_false_path -from [get_ports {ide_irq}] -to [get_pins -hier -filter {NAME =~ */cf_irq_meta_reg/D}]




