# impl_1 OPT_DESIGN pre-hook. Fail on missing probes rather than build an
# apparently usable ILA with incomplete diagnostics.
namespace eval ares_debug {}

proc ares_debug::one {objects description} {
    if {[llength $objects] != 1} {
        error "ARES debug: expected one $description, found [llength $objects]: $objects"
    }
    return [lindex $objects 0]
}

proc ares_debug::bus {name width} {
    set result {}
    for {set bit 0} {$bit < $width} {incr bit} {
        if {$width == 1} {
            set pattern [format {^.*/%s$} $name]
        } else {
            set pattern [format {^.*/%s\[%d\]$} $name $bit]
        }
        lappend result [one [get_nets -hier -regexp $pattern] "$name bit $bit"]
    }
    return $result
}

proc ares_debug::pin_net {path} {
    set pin [one [get_pins -quiet $path] "pin $path"]
    return [one [get_nets -of_objects $pin] "net on $path"]
}

proc ares_debug::board_probes {} {
    set b Block_top_i
    set result {}
    # Each VALID is followed by its READY; source identities are preserved.
    foreach spec {
        {axi_dma_0 m_axi_mm2s_arvalid m_axi_mm2s_arready}
        {axi_dma_0 m_axi_s2mm_awvalid m_axi_s2mm_awready}
        {axi_dma_0 m_axi_s2mm_wvalid m_axi_s2mm_wready}
        {ARES_RasterIXWrapper_0 m_axi_arvalid m_axi_arready}
        {ARES_RasterIXWrapper_0 m_axi_awvalid m_axi_awready}
        {ARES_RasterIXWrapper_0 m_axi_wvalid m_axi_wready}
        {ARES_RaxyerIX_frameb_0 ram_axi_arvalid ram_axi_arready}
    } {
        lassign $spec cell valid ready
        lappend result [list [pin_net $b/$cell/$valid] [pin_net $b/$cell/$ready]]
    }
    set plic $b/VexiiSocWrapper_0/inst/Soc/peripheral_plic_intc_thread_logic
    set irqs {}
    foreach gateway {2 3 5} {
        foreach suffix {ip waitCompletion} {
            lappend irqs [pin_net $plic/gateways_${gateway}_${suffix}_reg/Q]
        }
    }
    for {set i 0} {$i < 4} {incr i} {
        lappend irqs [pin_net [format {%s/io_targets[%d]} $plic $i]]
    }
    lappend result $irqs
    lappend result [concat [bus dbg_mig_reset 1] [bus dbg_mig_calib 1] [bus dbg_mig_locked 1]]
    return $result
}

proc ares_debug::insert {{board 1}} {
    if {[llength [get_debug_cores -quiet ares_ila]]} {
        error "ARES debug: ares_ila already exists"
    }
    set groups [list [bus dbg_fault 1]]
    foreach name {dma io mem} {
        foreach {suffix width} {flags 16 araddr 32 awaddr 32 pending 24 live 16} {
            lappend groups [bus dbg_${name}_${suffix} $width]
        }
    }
    lappend groups [bus dbg_io_wdata 32] [bus dbg_io_rdata 32]
    lappend groups [bus dbg_irq_levels 6] [bus dbg_reset_count 8]
    if {$board} {set groups [concat $groups [board_probes]]}

    # The wrapper and all probed AXI/PLIC signals use the MIG UI clock.
    if {$board} {
        set clock_net [pin_net Block_top_i/VexiiSocWrapper_0/inst/s_axi_aclk]
    } else {
        set clock_net [one [get_nets -of_objects [get_ports clk]] "test clock net"]
    }
    create_debug_core ares_ila ila
    set_property C_DATA_DEPTH 1024 [get_debug_cores ares_ila]
    set_property C_INPUT_PIPE_STAGES 1 [get_debug_cores ares_ila]
    set_property C_ADV_TRIGGER false [get_debug_cores ares_ila]
    set_property C_EN_STRG_QUAL true [get_debug_cores ares_ila]
    set_property ALL_PROBE_SAME_MU true [get_debug_cores ares_ila]
    set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores ares_ila]
    connect_debug_port ares_ila/clk $clock_net
    set index 0
    set total 0
    foreach nets $groups {
        if {$index != 0} {create_debug_port ares_ila probe}
        set port ares_ila/probe$index
        set_property port_width [llength $nets] [get_debug_ports $port]
        set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports $port]
        set_property MARK_DEBUG true $nets
        connect_debug_port $port $nets
        incr total [llength $nets]
        incr index
    }
    puts "ARES debug: inserted $index probes, $total bits, depth 1024"
}

# Tests source this file to exercise discovery/insertion independently.
if {![info exists ::ARES_DEBUG_LIBRARY_ONLY]} {
    ares_debug::insert
}
