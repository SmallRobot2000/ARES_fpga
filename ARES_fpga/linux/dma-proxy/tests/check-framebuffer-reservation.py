#!/usr/bin/env python3
"""Exercise the framebuffer reservation gate with synthetic DT/iomem files."""
from pathlib import Path
import struct
import subprocess
import tempfile

source = Path(__file__).resolve().parents[1]
with tempfile.TemporaryDirectory(prefix="ares-framebuffer-gate-") as temp:
    work = Path(temp)
    helper = work / "check.c"
    helper.write_text(r'''#include "framebuffer-reservation.h"
int main(int argc, char **argv) {
    uint32_t packet[6];
    if (argc != 3) return 2;
    if (RIX_DISPLAY_BYTES > RIX_FRAMEBUFFER_SLOT_SIZE ||
        RIX_FRAMEBUFFER_SLOT_SIZE * 2 != RIX_FRAMEBUFFER_RESERVATION_SIZE)
        return 3;
    rix_make_display_swap(packet);
    if (packet[0] != 0x90000010 || packet[2] != 0x10000010 ||
        packet[3] != RIX_FRAMEBUFFER_BASE || packet[4] != 0x23000094 ||
        packet[5] != 0) return 4;
    return rix_check_framebuffer_reserved(argv[1], argv[2]) ? 1 : 0;
}
''')
    binary = work / "check"
    subprocess.run(["cc", "-Wall", "-Wextra", "-Werror", "-I", str(source),
                    str(helper), "-o", str(binary)], check=True)
    base = {
        "reserved-memory/#address-cells": struct.pack(">I", 1),
        "reserved-memory/#size-cells": struct.pack(">I", 1),
        "reserved-memory/ranges": b"",
        "reserved-memory/rasterix-framebuffers@97c00000/reg":
            struct.pack(">II", 0x97C00000, 0x200000),
        "reserved-memory/rasterix-framebuffers@97c00000/no-map": b"",
        "reserved-memory/rasterix-framebuffers@97c00000/status": b"okay\0",
    }
    prefix = "reserved-memory/rasterix-framebuffers@97c00000/"
    good_map = ("90000000-97bfffff : System RAM\n"
                "97c00000-97dfffff : Reserved\n"
                "97e00000-97efffff : System RAM\n")
    cases = [
        ("valid", {}, good_map, 0),
        ("implicit-enabled", {prefix + "status": None}, good_map, 0),
        ("missing-node", {prefix + "reg": None}, good_map, 1),
        ("wrong-base", {prefix + "reg": struct.pack(">II", 0x97D00000, 0x200000)}, good_map, 1),
        ("wrong-size", {prefix + "reg": struct.pack(">II", 0x97C00000, 0x100000)}, good_map, 1),
        ("missing-no-map", {prefix + "no-map": None}, good_map, 1),
        ("disabled", {prefix + "status": b"disabled\0"}, good_map, 1),
        ("reusable", {prefix + "reusable": b""}, good_map, 1),
        ("RAM-overlap", {}, "90000000-9fffffff : System RAM\n  97c00000-97dfffff : Reserved\n", 1),
        ("partial", {}, "97c00000-97dfefff : Reserved\n", 1),
        ("other-owner", {}, good_map + "  97c00000-97c0ffff : display\n", 1),
    ]
    for name, changes, iomem, expected in cases:
        root = work / name
        dt = root / "dt"
        dt.mkdir(parents=True)
        for key, value in (base | changes).items():
            if value is not None:
                path = dt / key
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_bytes(value)
        mapping = root / "iomem"
        mapping.write_text(iomem)
        run = subprocess.run([str(binary), str(dt), str(mapping)],
                             capture_output=True, text=True)
        assert run.returncode == expected, (name, run.returncode, run.stdout, run.stderr)
    print(f"PASS: {len(cases)} framebuffer reservation-gate cases and display command encoding")
