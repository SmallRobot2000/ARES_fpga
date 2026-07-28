#USB rx
set_property PACKAGE_PIN P15 [get_ports {uart_rx}]             
set_property IOSTANDARD LVCMOS33 [get_ports {uart_rx}] 
#USB tx
set_property PACKAGE_PIN P16 [get_ports {uart_tx}]             
set_property IOSTANDARD LVCMOS33 [get_ports {uart_tx}]
#Test A30
set_property PACKAGE_PIN H5 [get_ports {test_tx}]             
set_property IOSTANDARD LVCMOS33 [get_ports {test_tx}]