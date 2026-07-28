#flash spi
#A6
set_property PACKAGE_PIN N9 [get_ports {spi_miso}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_miso}] 
#A12
set_property PACKAGE_PIN L3 [get_ports {spi_mosi}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_mosi}]
#A18
set_property PACKAGE_PIN K3 [get_ports {spi_sck}]              
set_property IOSTANDARD LVCMOS33 [get_ports {spi_sck}]
#A24
set_property PACKAGE_PIN J3 [get_ports {spi_flash_ce_n}]       
set_property IOSTANDARD LVCMOS33 [get_ports {spi_flash_ce_n}]

#Controller SPI
#spi_controller_mosi  A36
set_property PACKAGE_PIN J5 [get_ports {spi_controller_mosi}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller_mosi}] 

#spi_controller_miso  A42
set_property PACKAGE_PIN E3 [get_ports {spi_controller_miso}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller_miso}] 

#spi_controller_sck   A48
set_property PACKAGE_PIN F4 [get_ports {spi_controller_sck}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller_sck}] 

#spi_controller_ss[0] A54
set_property PACKAGE_PIN D6 [get_ports {spi_controller_ss[0]}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller_ss[0]}] 

#spi_controller_ss[1] A60
set_property PACKAGE_PIN C1 [get_ports {spi_controller_ss[1]}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller_ss[1]}]

#spi_controller_ss[2] A66
set_property PACKAGE_PIN B2 [get_ports {spi_controller_ss[2]}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller_ss[2]}] 

#spi_controller_ss[3] A72
set_property PACKAGE_PIN C7 [get_ports {spi_controller_ss[3]}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller_ss[3]}] 
