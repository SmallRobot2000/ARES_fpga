# ARES_fpga
ARES (Advanced Risc-V Embedded System)
Artix7 35T vivado project containing simple VexiiRV RiscV processor and peripherials

The CPU is [VexiiRV Risc-V CPU](https://github.com/SpinalHDL/VexiiRiscv) generated with flowing config:
```
sbt "Test/runMain vexiiriscv.Generate --xlen 32
 --with-supervisor
 --with-rvm
 --with-rva
 --with-rvf
 --with-rvc
 --with-rvZcbm
 --with-fetch-l1
 --with-lsu-l1
 --fetch-axi4
 --lsu-l1-axi4
 --fetch-l1-sets 64
 --fetch-l1-ways 2
 --fetch-l1-refill-count 2
 --fetch-l1-mem-data-width-min 32
 --lsu-l1-sets 64
 --lsu-l1-ways 2
 --lsu-l1-refill-count 2
 --lsu-l1-writeback-count 2
 --lsu-l1-mem-data-width-min 32
 --region base=80000000,size=1000000,main=1,exe=1
 --region base=90000000,size=10000000,main=1,exe=1
 --region base=10000000,size=10000000,main=0,exe=0
 --with-rdtime
 --with-sstc
 --with-user
 --pmp-size=4
"
```

