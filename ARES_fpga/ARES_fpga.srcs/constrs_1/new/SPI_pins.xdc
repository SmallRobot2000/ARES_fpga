#flash spi
#B24
set_property PACKAGE_PIN V18 [get_ports {spi_miso}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_miso}] 
#B18
set_property PACKAGE_PIN R18 [get_ports {spi_mosi}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_mosi}]
#B12
set_property PACKAGE_PIN N17 [get_ports {spi_sck}]              
set_property IOSTANDARD LVCMOS33 [get_ports {spi_sck}]
#B6
set_property PACKAGE_PIN P15 [get_ports {spi_flash_ce_n}]       
set_property IOSTANDARD LVCMOS33 [get_ports {spi_flash_ce_n}]

#spi_controller0
#spi_controller0_mosi  B54
set_property PACKAGE_PIN AB16 [get_ports {spi_controller0_mosi}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller0_mosi}] 

#spi_controller0_miso  B48
set_property PACKAGE_PIN U15 [get_ports {spi_controller0_miso}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller0_miso}] 

#spi_controller0_sck   B42
set_property PACKAGE_PIN Y11 [get_ports {spi_controller0_sck}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller0_sck}] 

#spi_controller0_ss[0] B36
set_property PACKAGE_PIN AA15 [get_ports {spi_controller0_ss[0]}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller0_ss[0]}] 



#spi_controller1
#spi_controller1_mosi B78
set_property PACKAGE_PIN W15 [get_ports {spi_controller1_mosi}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller1_mosi}]

#spi_controller1_miso B72
set_property PACKAGE_PIN W14 [get_ports {spi_controller1_miso}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller1_miso}] 

#spi_controller1_sck B66
set_property PACKAGE_PIN T14 [get_ports {spi_controller1_sck}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller1_sck}] 

#spi_controller1_ss[0] B60
set_property PACKAGE_PIN Y16 [get_ports {spi_controller1_ss[0]}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_controller1_ss[0]}] 

#SPI_INT_n A27
set_property PACKAGE_PIN M5 [get_ports {spi_int_n}]             
set_property IOSTANDARD LVCMOS33 [get_ports {spi_int_n}] 
