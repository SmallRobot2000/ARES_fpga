ifneq ($(KERNELRELEASE),)
obj-m += ares_dma_proxy.o
else
KDIR ?= /home/lovro/ARES/ARES_linux
ARCH ?= riscv
CROSS_COMPILE ?= riscv64-linux-gnu-

.PHONY: all clean
all:
	$(MAKE) -C $(KDIR) M=$(CURDIR) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules

clean:
	$(MAKE) -C $(KDIR) M=$(CURDIR) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) clean
endif
