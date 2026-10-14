# ARES AXI and interrupt hardware diagnostics

The smallest next experiment is [CF polling](cf-polling/README.md), which
does not require a new FPGA image. The hardware instrumentation below is
for distinguishing memory/peripheral bus stalls from interrupt servicing.

The monitors are passive: no debug signal affects AXI VALID/READY, reset,
IRQ delivery, CF timing, or memory contents. They use the existing MIG UI
clock. The ILA has 1024 samples and one input pipeline stage. Do not treat
the monitor's 1 ms timeout as an AXI protocol rule.

## Build and load

In the open ARES Vivado project, run:

```tcl
source debug/enable_debug.tcl
```

This installs implementation hooks and starts synthesis through bitstream
generation. To install only, first set `ARES_DEBUG_NO_BUILD` to 1.
The hooks fail if required probes cannot be found. Use the resulting pair:

```text
ARES_fpga.runs/impl_1/Block_top_wrapper.bit
ARES_fpga.runs/impl_1/Block_top_wrapper.ltx
```

In Hardware Manager, select both files for the FPGA, program it, refresh
the device, and open `ares_ila`. A `.bit` from an earlier build will not
contain these monitors/ILA. Programming hardware is a separate manual step.

## First captures

1. With graphics/DMA unprogrammed, boot Linux and reproduce CF/Ethernet
   activity. Use **Run Trigger Immediate** after a failure. The sticky flags,
   frozen addresses, and outstanding counts survive until system reset.
2. For an automatic capture, trigger on `dbg_fault == 1`. Set the trigger
   position around the middle of the buffer. Arm before reproducing the
   workload. If a previous fault already latched, it triggers immediately;
   arm before pressing board reset to capture a fresh run.
3. If no bus fault appears, trigger on the CF/ENC PLIC inputs and inspect
   the PLIC pending/completion state and CPU target outputs. Check Linux's
   `/proc/interrupts` alongside the capture.
4. To detect a producer whose invalid address is rejected by SmartConnect,
   trigger on that producer's VALID probe during an otherwise idle boot.
   The coherent-DMA monitor only sees requests that reach Vexii. Its idle
   flags do not prove that SmartConnect's upstream interfaces were idle.

The short capture buffer is about 10.24 us at 100 MHz. Sticky fault/address
state bridges the gap to failures appearing seconds later; it does not
preserve a complete historical transaction trace. If a bus fault appears
before the workload, inspect it first rather than assuming a later cause.

## Probe layout

| Probe | Contents |
| --- | --- |
| 0 | `dbg_fault`: any sticky fault from the three AXI monitors |
| 1–5 | DMA: flags, latest/frozen AR address, AW address, pending counts, live channels |
| 6–10 | CPU peripheral bus: the same five groups |
| 11–15 | CPU memory bus: the same five groups |
| 16–17 | Live peripheral write/read data, valid only with the corresponding channel |
| 18 | PLIC input sources 1–6, bit 0 = source 1; bit 3 = ENC; bit 5 = CF |
| 19 | Saturating reset-reassertion count since FPGA configuration |
| 20 | MM2S AR: bit 0 VALID, bit 1 READY |
| 21–22 | S2MM AW, W: bit 0 VALID, bit 1 READY |
| 23–25 | RasterIX AR, AW, W: bit 0 VALID, bit 1 READY |
| 26 | Framebuffer AR: bit 0 VALID, bit 1 READY |
| 27 | PLIC internals, described below |
| 28 | MIG: bit 0 UI reset, bit 1 calibration complete, bit 2 MMCM locked |

The waveform viewer may label each bit with its original HDL net name.

Each `dbg_*_flags[15:0]` has this layout:

| Bit | Meaning |
| --- | --- |
| 0–2 | Sticky: ARVALID, AWVALID, WVALID observed since reset |
| 3–4 | Sticky: read/write side made no handshake progress for 100,000 clocks while work was pending |
| 5–6 | Sticky: read/write response has error bit set, even if response is backpressured |
| 7 | Sticky: a DMA address was outside `0x90000000–0x9fffffff`; disabled for CPU buses |
| 8 | Sticky: an outstanding counter saturated or would underflow; subsequent counts may be unreliable |
| 9–10 | Current read/write timeout condition |
| 11 | At least one accepted read is incomplete |
| 12 | At least one accepted AW is awaiting B |
| 13 | Write data is awaiting B, or a partial W burst is in progress |
| 14–15 | Current R/B response backpressure |

`pending[7:0]` counts AR minus accepted RLAST responses; `[15:8]` counts
AW minus B responses; `[23:16]` counts accepted WLAST minus B responses.
W before AW is legal and is tracked independently. Counters saturate at
255. The watchdog measures bus-side progress, not the age of each ID, so
one stuck transaction can be masked by other continuing traffic.

AR/AW addresses track the latest presented request until that bus's first
sticky fault. With multiple outstanding transactions, these are context,
not proof of which request is oldest. Request range checking examines the
starting address, not the full burst span. This is not an AXI protocol checker.

Each `live[15:0]` contains:

```text
0 ARVALID   1 ARREADY   2 RVALID   3 RREADY
4 AWVALID   5 AWREADY   6 WVALID   7 WREADY
8 BVALID    9 BREADY   10 RLAST  11 WLAST
13:12 RRESP           15:14 BRESP
```

PLIC probe 27:

```text
0 SPI Ethernet pending       1 SPI Ethernet waiting for completion
2 ENC28J60 pending           3 ENC28J60 waiting for completion
4 CF pending                 5 CF waiting for completion
6 core 0 machine IRQ         7 core 0 supervisor IRQ
8 core 1 machine IRQ         9 core 1 supervisor IRQ
```

Pending=0 with waitCompletion=1 is normal after an interrupt was claimed;
it is only suspicious if software never completes it. PLIC IRQs can also
be masked by priority/enables/threshold. Do not read PLIC claim registers
with `devmem` just to observe them: reads have side effects.

## Interpreting results

- DMA flags 0–2 stay zero but CF/Ethernet fail: investigate the peripheral
  bus, PLIC/CPU servicing, reset, and external timing. Also check upstream
  producer probes for requests rejected before reaching the DMA port.
- IO read/write stall: the address identifies the last targeted peripheral:
  CF `0x10060000–0x1007ffff`, Ethernet SPI `0x10002000–0x10002fff`,
  DMA control `0x10080000–0x1008ffff`.
- DMA and memory stalls together: inspect coherent-fabric/DDR progress.
  A memory stall at `0x80000000` instead points at the flash path.
- IRQ inputs change but no PLIC/CPU service follows, with healthy AXI:
  investigate IRQ enables, claim/complete behavior and CPU interrupt masking.
- Reset count increases unexpectedly, or MIG calibration/lock drops:
  investigate reset/clock/power before blaming arbitration.
- CF polling works: IRQ servicing is implicated, but changed software load
  can also affect timing. Test Ethernet separately and retain bus evidence.

Your current RasterIX/framebuffer windows cover only the lower 128 MiB of
the 256 MiB DDR region; DMA MM2S/S2MM still cover 4 GiB. Future allocations
outside the smaller windows can get decode errors. No address map was
changed by this instrumentation.

## Validation

The standalone `tb_axi_debug_watch.sv` covers healthy idle/traffic,
simultaneous issue/completion, legal W-before-AW, partial writes, blocked
addresses, missing responses, response errors, frozen addresses, range
checking, saturation and reset. For example:

```sh
verilator --binary --timing -Wno-fatal --top-module tb_axi_debug_watch \
  --Mdir /tmp/ares-watch-test debug/tb_axi_debug_watch.sv \
  ARES_fpga.srcs/sources_1/new/VexiiSocWrapper.v
/tmp/ares-watch-test/Vtb_axi_debug_watch
```

Use the full Vivado implementation reports to assess timing/resource
impact. Digital simulation does not establish the hardware root cause.
