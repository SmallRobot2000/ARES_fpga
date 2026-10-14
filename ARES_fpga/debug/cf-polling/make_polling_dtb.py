#!/usr/bin/env python3
"""Copy an existing ARES DTB and remove only the CF interrupt properties."""

import argparse
from pathlib import Path
import shutil
import subprocess
import tempfile


def snapshot(blob):
    """Read every node/property as bytes, so unrelated changes are rejected."""
    result = {}
    pending = ["/"]
    while pending:
        node = pending.pop()
        props = subprocess.check_output(
            ["fdtget", "-p", str(blob), node], text=True
        ).split()
        result[node] = {
            prop: subprocess.check_output(
                ["fdtget", "-t", "bx", str(blob), node, prop], text=True
            ).strip()
            for prop in props
        }
        children = subprocess.check_output(
            ["fdtget", "-l", str(blob), node], text=True
        ).split()
        pending.extend(node.rstrip("/") + "/" + child for child in children)
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path, help="DTB currently used for boot")
    parser.add_argument("output", type=Path, help="new polling DTB; must not exist")
    parser.add_argument("--node", default="/soc/ide@10060000")
    args = parser.parse_args()
    if args.input.resolve() == args.output.resolve() or args.output.exists():
        parser.error("choose a new output filename; the input is never overwritten")
    before = snapshot(args.input)
    if args.node not in before:
        parser.error(f"CF node not found: {args.node}")
    compatible = subprocess.check_output(
        ["fdtget", "-t", "s", str(args.input), args.node, "compatible"], text=True
    ).split()
    if "ata-generic" not in compatible:
        parser.error("CF node is not compatible with ata-generic")
    removed = [p for p in ("interrupts", "interrupts-extended", "interrupt-parent")
               if p in before[args.node]]
    if not any(p in removed for p in ("interrupts", "interrupts-extended")):
        parser.error("CF node already has no IRQ specification")
    expected = {node: dict(props) for node, props in before.items()}
    for prop in removed:
        del expected[args.node][prop]
    args.output.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix="ares-cf-polling-") as tmp:
        staged = Path(tmp) / "tree.dtb"
        shutil.copyfile(args.input, staged)
        for prop in removed:
            subprocess.run(["fdtput", "-d", str(staged), args.node, prop], check=True)
        if snapshot(staged) != expected:
            raise RuntimeError("unexpected DTB change; output was not written")
        with args.output.open("xb") as output:
            output.write(staged.read_bytes())
    print(f"Created {args.output}")
    print(f"Removed from {args.node}: {', '.join(removed)}")
    print("Verified: all other nodes and property values are unchanged.")


if __name__ == "__main__":
    main()
