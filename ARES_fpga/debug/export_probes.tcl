# WRITE_BITSTREAM post-hook: export probes beside the implementation outputs.
set output [file join [pwd] Block_top_wrapper.ltx]
write_debug_probes -force $output
puts "ARES debug probes: $output"
