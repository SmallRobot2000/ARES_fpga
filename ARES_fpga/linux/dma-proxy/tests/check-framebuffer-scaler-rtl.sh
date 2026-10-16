#!/bin/sh
set -eu
test_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_dir=$(CDPATH= cd -- "$test_dir/../../.." && pwd)
build_dir=$(mktemp -d /tmp/ares-framebuffer-scaler-rtl.XXXXXX)
printf 'Building framebuffer scaler RTL test in %s\n' "$build_dir"
verilator --cc --exe --build -j 2 -Wno-fatal --public-flat-rw \
    --top-module ARES_RaxyerIX_framebuffer --Mdir "$build_dir" \
    "$repo_dir/ARES_fpga.srcs/sources_1/new/ARES_RaxyerIX_framebuffer.v" \
    "$test_dir/framebuffer-scaler-rtl.cpp" > "$build_dir/build.log" 2>&1 || {
    cat "$build_dir/build.log"
    exit 1
}
"$build_dir/VARES_RaxyerIX_framebuffer"
