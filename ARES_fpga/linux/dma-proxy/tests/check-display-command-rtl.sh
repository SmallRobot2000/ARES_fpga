#!/bin/sh
set -eu
test_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_dir=$(CDPATH= cd -- "$test_dir/../../.." && pwd)
rtl_dir="$repo_dir/ARES_fpga.srcs/sources_1/imports/rtl/RasterIX"
build_dir=$(mktemp -d /tmp/ares-display-command-rtl.XXXXXX)
printf 'Building display-command RTL test in %s\n' "$build_dir"
verilator --cc --exe --build -j 2 -Wno-fatal \
    --top-module DisplayCommandPath -I"$rtl_dir" \
    --Mdir "$build_dir" \
    "$test_dir/display-command-path.v" \
    "$rtl_dir/FrameStreamingCore.v" "$rtl_dir/LinearAddressGenerator.v" \
    "$rtl_dir/CommandParser.v" "$rtl_dir/RegisterBank.v" \
    "$test_dir/display-command-rtl.cpp" > "$build_dir/build.log" 2>&1 || {
    cat "$build_dir/build.log"
    exit 1
}
"$build_dir/VDisplayCommandPath"
