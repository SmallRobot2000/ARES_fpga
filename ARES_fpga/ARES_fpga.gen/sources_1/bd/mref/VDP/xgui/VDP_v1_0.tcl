# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "VGA_H_ACTIVE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VGA_H_BACK_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VGA_H_FRONT_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VGA_H_SYNC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VGA_H_TOTAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VGA_V_ACTIVE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VGA_V_BACK_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VGA_V_FRONT_PORCH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VGA_V_SYNC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VGA_V_TOTAL" -parent ${Page_0}


}

proc update_PARAM_VALUE.VGA_H_ACTIVE { PARAM_VALUE.VGA_H_ACTIVE } {
	# Procedure called to update VGA_H_ACTIVE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VGA_H_ACTIVE { PARAM_VALUE.VGA_H_ACTIVE } {
	# Procedure called to validate VGA_H_ACTIVE
	return true
}

proc update_PARAM_VALUE.VGA_H_BACK_PORCH { PARAM_VALUE.VGA_H_BACK_PORCH } {
	# Procedure called to update VGA_H_BACK_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VGA_H_BACK_PORCH { PARAM_VALUE.VGA_H_BACK_PORCH } {
	# Procedure called to validate VGA_H_BACK_PORCH
	return true
}

proc update_PARAM_VALUE.VGA_H_FRONT_PORCH { PARAM_VALUE.VGA_H_FRONT_PORCH } {
	# Procedure called to update VGA_H_FRONT_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VGA_H_FRONT_PORCH { PARAM_VALUE.VGA_H_FRONT_PORCH } {
	# Procedure called to validate VGA_H_FRONT_PORCH
	return true
}

proc update_PARAM_VALUE.VGA_H_SYNC { PARAM_VALUE.VGA_H_SYNC } {
	# Procedure called to update VGA_H_SYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VGA_H_SYNC { PARAM_VALUE.VGA_H_SYNC } {
	# Procedure called to validate VGA_H_SYNC
	return true
}

proc update_PARAM_VALUE.VGA_H_TOTAL { PARAM_VALUE.VGA_H_TOTAL } {
	# Procedure called to update VGA_H_TOTAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VGA_H_TOTAL { PARAM_VALUE.VGA_H_TOTAL } {
	# Procedure called to validate VGA_H_TOTAL
	return true
}

proc update_PARAM_VALUE.VGA_V_ACTIVE { PARAM_VALUE.VGA_V_ACTIVE } {
	# Procedure called to update VGA_V_ACTIVE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VGA_V_ACTIVE { PARAM_VALUE.VGA_V_ACTIVE } {
	# Procedure called to validate VGA_V_ACTIVE
	return true
}

proc update_PARAM_VALUE.VGA_V_BACK_PORCH { PARAM_VALUE.VGA_V_BACK_PORCH } {
	# Procedure called to update VGA_V_BACK_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VGA_V_BACK_PORCH { PARAM_VALUE.VGA_V_BACK_PORCH } {
	# Procedure called to validate VGA_V_BACK_PORCH
	return true
}

proc update_PARAM_VALUE.VGA_V_FRONT_PORCH { PARAM_VALUE.VGA_V_FRONT_PORCH } {
	# Procedure called to update VGA_V_FRONT_PORCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VGA_V_FRONT_PORCH { PARAM_VALUE.VGA_V_FRONT_PORCH } {
	# Procedure called to validate VGA_V_FRONT_PORCH
	return true
}

proc update_PARAM_VALUE.VGA_V_SYNC { PARAM_VALUE.VGA_V_SYNC } {
	# Procedure called to update VGA_V_SYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VGA_V_SYNC { PARAM_VALUE.VGA_V_SYNC } {
	# Procedure called to validate VGA_V_SYNC
	return true
}

proc update_PARAM_VALUE.VGA_V_TOTAL { PARAM_VALUE.VGA_V_TOTAL } {
	# Procedure called to update VGA_V_TOTAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VGA_V_TOTAL { PARAM_VALUE.VGA_V_TOTAL } {
	# Procedure called to validate VGA_V_TOTAL
	return true
}


proc update_MODELPARAM_VALUE.VGA_H_ACTIVE { MODELPARAM_VALUE.VGA_H_ACTIVE PARAM_VALUE.VGA_H_ACTIVE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VGA_H_ACTIVE}] ${MODELPARAM_VALUE.VGA_H_ACTIVE}
}

proc update_MODELPARAM_VALUE.VGA_V_ACTIVE { MODELPARAM_VALUE.VGA_V_ACTIVE PARAM_VALUE.VGA_V_ACTIVE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VGA_V_ACTIVE}] ${MODELPARAM_VALUE.VGA_V_ACTIVE}
}

proc update_MODELPARAM_VALUE.VGA_H_SYNC { MODELPARAM_VALUE.VGA_H_SYNC PARAM_VALUE.VGA_H_SYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VGA_H_SYNC}] ${MODELPARAM_VALUE.VGA_H_SYNC}
}

proc update_MODELPARAM_VALUE.VGA_V_SYNC { MODELPARAM_VALUE.VGA_V_SYNC PARAM_VALUE.VGA_V_SYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VGA_V_SYNC}] ${MODELPARAM_VALUE.VGA_V_SYNC}
}

proc update_MODELPARAM_VALUE.VGA_H_FRONT_PORCH { MODELPARAM_VALUE.VGA_H_FRONT_PORCH PARAM_VALUE.VGA_H_FRONT_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VGA_H_FRONT_PORCH}] ${MODELPARAM_VALUE.VGA_H_FRONT_PORCH}
}

proc update_MODELPARAM_VALUE.VGA_V_FRONT_PORCH { MODELPARAM_VALUE.VGA_V_FRONT_PORCH PARAM_VALUE.VGA_V_FRONT_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VGA_V_FRONT_PORCH}] ${MODELPARAM_VALUE.VGA_V_FRONT_PORCH}
}

proc update_MODELPARAM_VALUE.VGA_H_BACK_PORCH { MODELPARAM_VALUE.VGA_H_BACK_PORCH PARAM_VALUE.VGA_H_BACK_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VGA_H_BACK_PORCH}] ${MODELPARAM_VALUE.VGA_H_BACK_PORCH}
}

proc update_MODELPARAM_VALUE.VGA_V_BACK_PORCH { MODELPARAM_VALUE.VGA_V_BACK_PORCH PARAM_VALUE.VGA_V_BACK_PORCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VGA_V_BACK_PORCH}] ${MODELPARAM_VALUE.VGA_V_BACK_PORCH}
}

proc update_MODELPARAM_VALUE.VGA_H_TOTAL { MODELPARAM_VALUE.VGA_H_TOTAL PARAM_VALUE.VGA_H_TOTAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VGA_H_TOTAL}] ${MODELPARAM_VALUE.VGA_H_TOTAL}
}

proc update_MODELPARAM_VALUE.VGA_V_TOTAL { MODELPARAM_VALUE.VGA_V_TOTAL PARAM_VALUE.VGA_V_TOTAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VGA_V_TOTAL}] ${MODELPARAM_VALUE.VGA_V_TOTAL}
}

