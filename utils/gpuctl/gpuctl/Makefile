#KERNELVER := $(shell uname -r)
KERNELDIR ?= /lib/modules/$(shell uname -r)/build
topdir := $(shell cd $(src)/.. && pwd)

NVIDIA_DRIVER_PATH := /usr/src/nvidia-560.35.03
#NVIDIA_DRIVER_PATH := /usr/src/linux-headers-5.15.0-122-generic/
#NVIDIA_DRIVER_PATH := $(topdir)/NVIDIA-Linux-x86_64-470.86
#KBUILD_EXTRA_SYMBOLS := $(NVIDIA_DRIVER_PATH)/kernel/Module.symvers
KBUILD_EXTRA_SYMBOLS := $(NVIDIA_DRIVER_PATH)/Module.symvers 
EXTRA_CFLAGS += -I$(NVIDIA_DRIVER_PATH)/nvidia
EXTRA_CFLAGS += -I/usr/src/nvidia-560.35.05/nvidia/
EXTRA_CFLAGS += -I/usr/src/nvidia-560.35.05/nvidia-peermem/
EXTRA_CFLAGS += -fno-stack-protector
EXTRA_CFLAGS += -O2
ccflags-y += $(EXTRA_CFLAGS)

ifneq ($(KERNELRELEASE),)

obj-m := gpuctl.o
gpuctl-objs := ./src/gpuctl.o ./src/nvfs-p2p.o

else

endif

KERNELDIR ?= /lib/modules/$(shell uname -r)/build

all:

#$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
	$(MAKE) -C $(KERNELDIR) M=$(shell pwd) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) clean

