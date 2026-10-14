#!/bin/sh
set -eu
test_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_dir=$(CDPATH= cd -- "$test_dir/../../.." && pwd)
rtl_dir="$repo_dir/ARES_fpga.srcs/sources_1/imports/rtl/RasterIX"
build_dir=$(mktemp -d /tmp/ares-loopback-rtl.XXXXXX)
printf 'Building RTL test in %s\n' "$build_dir"
verilator --cc --exe --build -j 2 -Wno-fatal \
    --top-module FrameStreamingCore -GSTREAM_WIDTH=32 -GADDR_WIDTH=32 -GID_WIDTH=4 \
    --Mdir "$build_dir" \
    "$rtl_dir/FrameStreamingCore.v" "$rtl_dir/LinearAddressGenerator.v" \
    "$test_dir/loopback-rtl.cpp" > "$build_dir/build.log" 2>&1 || {
    cat "$build_dir/build.log"
    exit 1
}
"$build_dir/VFrameStreamingCore"
