#!/usr/bin/env python3
"""Exercise the real userspace reservation gate with synthetic DT/iomem files."""
from pathlib import Path
import struct
import subprocess
import tempfile

source = Path(__file__).resolve().parents[1]
with tempfile.TemporaryDirectory(prefix="ares-scratch-gate-") as temp:
    work = Path(temp)
    helper = work / "check.c"
    helper.write_text('''#include "scratch-reservation.h"
int main(int argc, char **argv) {
    if (argc != 3) return 2;
    if (!rix_memory_range_valid(RIX_SCRATCH_BASE, 64) ||
        !rix_memory_range_valid(RIX_SCRATCH_BASE + RIX_SCRATCH_SIZE - 64, 64) ||
        rix_memory_range_valid(RIX_SCRATCH_BASE - 64, 64) ||
        rix_memory_range_valid(RIX_SCRATCH_BASE + RIX_SCRATCH_SIZE, 64) ||
        rix_memory_range_valid(RIX_SCRATCH_BASE, 65) ||
        rix_memory_range_valid(RIX_SCRATCH_BASE + 1, 64) ||
        rix_memory_range_valid(RIX_SCRATCH_BASE, 0) ||
        rix_memory_range_valid(RIX_SCRATCH_BASE, 0xffffffc0U)) return 3;
    return rix_check_scratch_reserved(argv[1], argv[2]) ? 1 : 0;
}
''')
    binary = work / "check"
    subprocess.run(["cc", "-Wall", "-Wextra", "-Werror", "-I", str(source),
                    str(helper), "-o", str(binary)], check=True)
    base = {
        "reserved-memory/#address-cells": struct.pack(">I", 1),
        "reserved-memory/#size-cells": struct.pack(">I", 1),
        "reserved-memory/ranges": b"",
        "reserved-memory/rasterix-scratch@97f00000/reg": struct.pack(">II", 0x97f00000, 0x100000),
        "reserved-memory/rasterix-scratch@97f00000/no-map": b"",
        "reserved-memory/rasterix-scratch@97f00000/status": b"okay\0",
    }
    prefix = "reserved-memory/rasterix-scratch@97f00000/"
    good_map = "90000000-97efffff : System RAM\n97f00000-97ffffff : Reserved\n98000000-9f7fffff : System RAM\n"
    cases = [
        ("valid", {}, good_map, 0),
        ("implicit-enabled", {prefix + "status": None}, good_map, 0),
        ("old-DTB", {prefix + "reg": None}, good_map, 1),
        ("wrong-base", {prefix + "reg": struct.pack(">II", 0x97e00000, 0x100000)}, good_map, 1),
        ("wrong-size", {prefix + "reg": struct.pack(">II", 0x97f00000, 0x10000)}, good_map, 1),
        ("missing-no-map", {prefix + "no-map": None}, good_map, 1),
        ("nonempty-no-map", {prefix + "no-map": b"bad"}, good_map, 1),
        ("disabled", {prefix + "status": b"disabled\0"}, good_map, 1),
        ("disabled-parent", {"reserved-memory/status": b"disabled\0"}, good_map, 1),
        ("reusable", {prefix + "reusable": b""}, good_map, 1),
        ("wrong-cells", {"reserved-memory/#address-cells": struct.pack(">I", 2)}, good_map, 1),
        ("translated-range", {"reserved-memory/ranges": b"1234"}, good_map, 1),
        ("RAM-overlap", {}, "90000000-9fffffff : System RAM\n  97f00000-97ffffff : Reserved\n", 1),
        ("partial-reservation", {}, "97f00000-97ffefff : Reserved\n", 1),
        ("redacted", {}, "00000000-00000000 : Reserved\n", 1),
        ("other-owner", {}, good_map + "  97f00000-97f0ffff : another-device\n", 1),
    ]
    for name, changes, iomem, expected in cases:
        root = work / name
        dt = root / "dt"
        dt.mkdir(parents=True)
        properties = base | changes
        for key, value in properties.items():
            if value is not None:
                p = dt / key
                p.parent.mkdir(parents=True, exist_ok=True)
                p.write_bytes(value)
        mapping = root / "iomem"
        mapping.write_text(iomem)
        run = subprocess.run([str(binary), str(dt), str(mapping)], capture_output=True, text=True)
        assert run.returncode == expected, (name, run.returncode, run.stdout, run.stderr)
    print(f"PASS: {len(cases)} reservation-gate cases and scratch address/length bounds")
