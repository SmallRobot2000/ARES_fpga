#!/usr/bin/env python3
"""Exercise the RasterIX texture and auxiliary reservation gates."""
from pathlib import Path
import struct
import subprocess
import tempfile

source = Path(__file__).resolve().parents[1]
with tempfile.TemporaryDirectory(prefix="ares-texture-gate-") as temp:
    work = Path(temp)
    helper = work / "check.c"
    helper.write_text(r'''#include "rasterix-display.h"
#include "texture-reservation.h"
int main(int argc, char **argv) {
    if (argc != 3) return 2;
    if (RIX_TEXTURE_BASE + RIX_TEXTURE_SIZE != RIX_FRAMEBUFFER_BASE ||
        RIX_AUXILIARY_BASE != RIX_FRAMEBUFFER_BASE + RIX_FRAMEBUFFER_RESERVATION_SIZE)
        return 3;
    if (rix_check_texture_reserved(argv[1], argv[2])) return 1;
    return rix_check_auxiliary_reserved(argv[1], argv[2]) ? 1 : 0;
}
''')
    binary = work / "check"
    subprocess.run(["cc", "-Wall", "-Wextra", "-Werror", "-I", str(source),
                    str(helper), "-o", str(binary)],
                   check=True)
    base = {
        "reserved-memory/#address-cells": struct.pack(">I", 1),
        "reserved-memory/#size-cells": struct.pack(">I", 1),
        "reserved-memory/ranges": b"",
        "reserved-memory/rasterix-textures@97800000/reg":
            struct.pack(">II", 0x97800000, 0x400000),
        "reserved-memory/rasterix-textures@97800000/no-map": b"",
        "reserved-memory/rasterix-textures@97800000/status": b"okay\0",
        "reserved-memory/rasterix-auxiliary@97e00000/reg":
            struct.pack(">II", 0x97E00000, 0x100000),
        "reserved-memory/rasterix-auxiliary@97e00000/no-map": b"",
        "reserved-memory/rasterix-auxiliary@97e00000/status": b"okay\0",
    }
    texture = "reserved-memory/rasterix-textures@97800000/"
    auxiliary = "reserved-memory/rasterix-auxiliary@97e00000/"
    good_map = "97800000-97efffff : Reserved\n"
    cases = [
        ("valid", {}, good_map, 0),
        ("missing-textures", {texture + "reg": None}, good_map, 1),
        ("short-textures", {texture + "reg": struct.pack(">II", 0x97800000, 0x200000)}, good_map, 1),
        ("missing-auxiliary", {auxiliary + "reg": None}, good_map, 1),
        ("wrong-auxiliary", {auxiliary + "reg": struct.pack(">II", 0x97D00000, 0x100000)}, good_map, 1),
        ("linux-overlap", {}, "97800000-97efffff : System RAM\n", 1),
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
    print(f"PASS: {len(cases)} texture/auxiliary reservation-gate cases")
