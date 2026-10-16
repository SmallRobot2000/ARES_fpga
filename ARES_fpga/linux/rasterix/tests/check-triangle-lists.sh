#!/bin/sh
set -eu
root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
build=$(mktemp -d /tmp/ares-rasterix-capture.XXXXXX)
python3 "$root/tests/check-hardware-config.py"
cmake -S "$root" -B "$build" -DCMAKE_BUILD_TYPE=Release
cmake --build "$build" --target ares-gl-capture ares-render-config-tests -j4
ctest --test-dir "$build" --output-on-failure
