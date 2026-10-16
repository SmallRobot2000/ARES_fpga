#!/bin/sh
set -eu
script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
build_dir="$script_dir/build-rv32"
cmake -S "$script_dir" -B "$build_dir" \
    -DCMAKE_TOOLCHAIN_FILE="$script_dir/riscv32-buildroot-toolchain.cmake" \
    -DCMAKE_BUILD_TYPE=Release
cmake --build "$build_dir" --target ares-gl-triangle ares-gl-animate -j"$(nproc)"
cp "$build_dir/ares-gl-triangle" "$script_dir/ares-gl-triangle"
cp "$build_dir/ares-gl-animate" "$script_dir/ares-gl-animate"
"/home/lovro/ARES/buildroot/output/host/bin/riscv32-buildroot-linux-gnu-strip" \
    "$script_dir/ares-gl-triangle" "$script_dir/ares-gl-animate"
file "$script_dir/ares-gl-triangle"
file "$script_dir/ares-gl-animate"
