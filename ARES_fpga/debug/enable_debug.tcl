# Run in the open ARES project: source debug/enable_debug.tcl
# Set ARES_DEBUG_NO_BUILD=1 before sourcing to only install the hooks.
set ares_debug_dir [file dirname [file normalize [info script]]]
set ares_project [file join [file dirname $ares_debug_dir] ARES_fpga.xpr]
if {[current_project -quiet] eq ""} {open_project $ares_project}
if {[file normalize [get_property DIRECTORY [current_project]]] ne [file dirname $ares_project]} {
    error "Open the ARES FPGA project before enabling its debug hooks"
}
set ares_impl [get_runs impl_1]
foreach {property filename} {
    STEPS.OPT_DESIGN.TCL.PRE insert_ila.tcl
    STEPS.WRITE_BITSTREAM.TCL.POST export_probes.tcl
} {
    set desired [file join $ares_debug_dir $filename]
    set existing [get_property $property $ares_impl]
    if {$existing ne "" && [file normalize $existing] ne $desired} {
        error "Existing $property hook must be integrated explicitly: $existing"
    }
    set_property $property $desired $ares_impl
}
update_compile_order -fileset sources_1
puts "ARES debug hooks installed. Build outputs: ARES_fpga.runs/impl_1/Block_top_wrapper.bit and .ltx"
if {![info exists ::ARES_DEBUG_NO_BUILD] || !$::ARES_DEBUG_NO_BUILD} {
    reset_run synth_1
    launch_runs impl_1 -to_step write_bitstream -jobs 4
}
