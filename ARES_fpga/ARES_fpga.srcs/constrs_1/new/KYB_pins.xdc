#A75
set_property PACKAGE_PIN J1 [get_ports {KYBD_COL[0]}]
#A69
set_property PACKAGE_PIN H5 [get_ports {KYBD_COL[1]}]
#A63
set_property PACKAGE_PIN F1 [get_ports {KYBD_COL[2]}]
#A57
set_property PACKAGE_PIN B2 [get_ports {KYBD_COL[3]}]
#A51
set_property PACKAGE_PIN P1 [get_ports {KYBD_COL[4]}]
#A45
set_property PACKAGE_PIN J4 [get_ports {KYBD_COL[5]}]
#A39
set_property PACKAGE_PIN G4 [get_ports {KYBD_COL[6]}]
#A33
set_property PACKAGE_PIN P4 [get_ports {KYBD_COL[7]}]

#A65
set_property PACKAGE_PIN G1 [get_ports {KYBD_ROW[0]}]
#A59
set_property PACKAGE_PIN C2 [get_ports {KYBD_ROW[1]}]
#A53
set_property PACKAGE_PIN R1 [get_ports {KYBD_ROW[2]}]
#A47
set_property PACKAGE_PIN K4 [get_ports {KYBD_ROW[3]}]

#A35
set_property PACKAGE_PIN P5 [get_ports {KYBD_LED_CODE}]
#A41
set_property PACKAGE_PIN H4 [get_ports {KYBD_LED_CAPS}]

set_property IOSTANDARD LVCMOS33 [get_ports {KYBD_COL[*]}]
set_property PULLTYPE NONE       [get_ports {KYBD_COL[*]}]

set_property IOSTANDARD LVCMOS33 [get_ports {KYBD_ROW[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KYBD_ROW[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KYBD_ROW[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {KYBD_ROW[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {KYBD_LED_CODE}]
set_property IOSTANDARD LVCMOS33 [get_ports {KYBD_LED_CAPS}]
