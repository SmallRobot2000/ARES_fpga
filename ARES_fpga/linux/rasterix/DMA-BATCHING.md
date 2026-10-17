# RasterIX strip DMA batching

At 512x384, RasterIX produces three display lists per frame. The previous path
waited for each MM2S transaction before submitting the next one. That caused
three kernel sleep/wake cycles and left a software gap between strips.

The AXI DMA core is configured in direct/simple mode, so only one DMAengine
descriptor may be active. The optimized path uses `FINISH_START_XFER` to wait
for one strip and start the next inside the same kernel call. This removes the
return-to-userspace scheduling gap while preserving direct-mode ordering.
Texture stores and device-memory reads remain synchronization points. Existing
ioctl numbers and the mmap layout are unchanged; one new ioctl is added.

Both pieces must be deployed together:

- `ares_dma_proxy.ko` implements the combined finish/start operation.
- The rebuilt `ares-gl-game` and `ares-gl-animate` submit strip lists without
  waiting between them.

An optimized executable with the old module will fail because the combined
ioctl is unknown. An old executable with the new module remains valid, but it
continues to make separate finish and start calls.

Ready-to-transfer files are under `artifacts/dma-batching/`. On ARES, stop the
running demo and replace the module before starting the new executable:

```sh
rmmod ares_dma_proxy
insmod ./ares_dma_proxy.ko
./proxy-smoke --chain
./ares-gl-game --frames 1000
```

If `taskset` is unavailable, the game can pin itself before creating any
RasterIX threads:

```sh
./ares-gl-game --cpu 0 --frames 300
./ares-gl-game --cpu 1 --frames 300
```

Expected chain-test result:

```text
PASS: three MM2S NOP buffers chained without userspace submission gaps
```

Compare the game's `swap/wait` and FPS lines with the earlier run. Transfer
count and bytes per frame should remain essentially the same; this change
reduces the gaps between those transfers. The exact gain must be measured on
the board because native tests do not model Linux scheduling or FPGA backpressure.

The native capture regression verifies groups of exactly three display lists.
The kernel module, RV32 smoke test, and RV32 graphics executables all compile;
the six native rendering tests pass. The chained ioctl still needs the
hardware smoke test above.
