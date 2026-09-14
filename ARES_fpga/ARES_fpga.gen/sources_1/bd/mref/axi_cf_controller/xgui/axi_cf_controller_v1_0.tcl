# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HOLD_CYCLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SETUP_CYCLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STROBE_CYCLES" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.HOLD_CYCLES { PARAM_VALUE.HOLD_CYCLES } {
	# Procedure called to update HOLD_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HOLD_CYCLES { PARAM_VALUE.HOLD_CYCLES } {
	# Procedure called to validate HOLD_CYCLES
	return true
}

proc update_PARAM_VALUE.SETUP_CYCLES { PARAM_VALUE.SETUP_CYCLES } {
	# Procedure called to update SETUP_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SETUP_CYCLES { PARAM_VALUE.SETUP_CYCLES } {
	# Procedure called to validate SETUP_CYCLES
	return true
}

proc update_PARAM_VALUE.STROBE_CYCLES { PARAM_VALUE.STROBE_CYCLES } {
	# Procedure called to update STROBE_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STROBE_CYCLES { PARAM_VALUE.STROBE_CYCLES } {
	# Procedure called to validate STROBE_CYCLES
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.SETUP_CYCLES { MODELPARAM_VALUE.SETUP_CYCLES PARAM_VALUE.SETUP_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SETUP_CYCLES}] ${MODELPARAM_VALUE.SETUP_CYCLES}
}

proc update_MODELPARAM_VALUE.STROBE_CYCLES { MODELPARAM_VALUE.STROBE_CYCLES PARAM_VALUE.STROBE_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STROBE_CYCLES}] ${MODELPARAM_VALUE.STROBE_CYCLES}
}

proc update_MODELPARAM_VALUE.HOLD_CYCLES { MODELPARAM_VALUE.HOLD_CYCLES PARAM_VALUE.HOLD_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HOLD_CYCLES}] ${MODELPARAM_VALUE.HOLD_CYCLES}
}

