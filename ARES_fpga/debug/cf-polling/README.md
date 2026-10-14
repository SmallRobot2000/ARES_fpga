# CF without interrupts

The local `ARES_linux` driver matches `ata-generic` with `pata_of_platform`.
With no IRQ specification, `pata_platform` sets `ATA_FLAG_PIO_POLLING` and
prints `no IRQ, using PIO polling`. This is independent of the FPGA bitstream.
Keep the hardware IRQ synchronizers in place.

`tree-cf-polling.dtb` is a ready-built variant of
`/home/lovro/ARES/ARES_bootloader/tree/tree.dtb`. It retains both CPU nodes,
the existing memory/peripheral map, and these boot arguments:

```text
earlycon=sbi console=ttyUL0,115200 root=/dev/sda1 rootwait rw uio_pdrv_genirq.of_id=generic-uio
```

Only `/soc/ide@10060000`'s `interrupts` and `interrupt-parent` properties
were removed. The script verifies every other DTB node/property is unchanged.
The SD card was not mounted on the development host, so it was not updated.

If your current SD `tree.dtb` differs from that source, make the polling
variant from the actual SD file instead, preserving its boot arguments:

```sh
python3 debug/cf-polling/make_polling_dtb.py /path/to/current/tree.dtb /tmp/tree-cf-polling.dtb
```

Save the SD's original `tree.dtb` as `tree-with-irqs.dtb`, then copy the chosen
polling variant onto SD **as `tree.dtb`**. The bootloader loads that filename.
Reboot and check:

```sh
dmesg | grep -E 'ata1|polling|PATA'
cat /proc/interrupts
```

Expect `no IRQ, using PIO polling` in the ATA probe line and no registered CF
IRQ handler. Merely forcing PIO transfer mode does not disable interrupts;
the missing IRQ specification is what selects polling. Do not set
`interrupts = <0>` or simply disconnect the FPGA IRQ wire.

Repeat the same CF read and Ethernet workload. If CF becomes reliable, IRQ
delivery/servicing is implicated, though polling also changes timing/load.
If CF still fails, focus on MMIO/AXI progress and CF PIO timing. Polling uses
the same AXI slave and CF pins, so it cannot rescue a blocked bus.

Polling can increase CPU work and reduce throughput. Restore the saved DTB
to return to interrupt-driven operation.
