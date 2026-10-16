# Run in the open ARES project before rebuilding after the parameter rename.
set bd_file [get_files */Block_top.bd]
open_bd_design $bd_file
update_module_reference [get_ips {Block_top_ARES_RasterIXWrapper_0_0 Block_top_ARES_RaxyerIX_frameb_0_0}]
validate_bd_design
save_bd_design
generate_target all $bd_file
