
PHONY = clean all
TARGET_NAME = gpu_direct

all: $(TARGET_NAME)

ROOT_DIR = $(shell pwd)

CC = $(CROSS_COMPILE)gcc
LD = $(CROSS_COMPILE)gcc

#NVIDIA_DRIVER_PATH := $(HOME)/gpudma/nvidia
NVIDIA_DRIVER_PATH := /usr/src/nvidia-560.35.03/nvidia/
CUDADIR:= /usr/local/cuda-12.6/targets/x86_64-linux



INCDIR := . $(CUDADIR)/include ../gpuctl/src ../xdma $(NVIDIA_DRIVER_PATH)/kernel/nvidia
INCLUDE := $(addprefix -I, $(INCDIR))
CFLAGS := -D__LINUX__ -g -Wall $(INCLUDE)
SRCFILE := $(wildcard *.cpp) 
OBJFILE := $(patsubst %.cpp,%.o, $(SRCFILE))

#LDFLAGS := -Wl,-rpath,$(CUDADIR)/lib64/stubs -L"$(CUDADIR)/lib64/stubs" -lcuda
#LDFLAGS :=  -L/usr/local/cuda/lib64 -lcudart -L/usr/local/cuda/lib64/stubs -lcuda $(LIBS)
LDFLAGS +=  -L$(CUDADIR)/lib64 -lcuda -lpthread
#LDFLAGS +=  -L$(CUDADIR)/lib64 -lcudart
LDFLAGS +=  -lstdc++

$(TARGET_NAME): $(OBJFILE)
	$(LD) $(notdir $^) -o $(TARGET_NAME) $(LDFLAGS)
	cp $(TARGET_NAME) ../bin

%.o: %.cpp
	$(CC) $(CFLAGS) -c -MD $<

include $(wildcard *.d)

ftog:	$(patsubst %.cpp,%.o, ./src/ioctl_test_ftog.cpp)
	$(LD) $(notdir $^) -o ftog $(LDFLAGS)
	cp ftog ../bin

ftogprf:$(patsubst %.cpp,%.o, ./src/ioctl_perftest_ftog.cpp)
	$(LD) $(notdir $^) -o ftogprf $(LDFLAGS)
	cp ftogprf ../bin

ftohtogprf:$(patsubst %.cpp,%.o, ./src/ioctl_perftest_ftohtog.cpp)
	$(LD) $(notdir $^) -o ftohtogprf $(LDFLAGS)
	cp ftohtogprf ../bin

gtof:	$(patsubst %.cpp,%.o, ./src/ioctl_test_gtof.cpp)
	$(LD) $(notdir $^) -o gtof $(LDFLAGS)
	cp gtof ../bin

prod:	$(patsubst %.cpp,%.o, ./src/ioctl_gpu.cpp ./src/ioctl_prod.cpp)
	$(LD) $(notdir $^) -o prod $(LDFLAGS)
	cp prod ../bin

gpu:	$(patsubst %.cpp,%.o, ./src/ioctl_gpu.cpp)
	$(LD) $(notdir $^) -o gpu $(LDFLAGS)
	cp gpu ../bin

htogprf:$(patsubst %.cpp,%.o, ./src/ioctl_perftest_htog.cpp)
	$(LD) $(notdir $^) -o htog $(LDFLAGS)
	cp htog ../bin

p2ptest:   $(patsubst %.cpp,%.o, ./src/ioctl_parallel_test.cpp)
	$(LD) $(notdir $^) -o p2ptest $(LDFLAGS)
	cp p2ptest ../bin

ftogtest:   $(patsubst %.cpp,%.o, ./src/ioctl_parallel_test_ftog.cpp)
	$(LD) $(notdir $^) -o ftogtest $(LDFLAGS)
	cp ftogtest ../bin

gtoftest:   $(patsubst %.cpp,%.o, ./src/ioctl_parallel_test_gtof.cpp)
	$(LD) $(notdir $^) -o gtoftest $(LDFLAGS)
	cp gtoftest ../bin


ftoh:	$(patsubst %.cpp,%.o, ./src/ioctl_test_ftoh.cpp)
	$(LD) $(notdir $^) -o ftoh $(LDFLAGS)
	cp ftoh ../bin

htof:	$(patsubst %.cpp,%.o, ./src/ioctl_test_htof.cpp)
	$(LD) $(notdir $^) -o htof $(LDFLAGS)
	cp htof ../bin

gtofbyp:$(patsubst %.cpp,%.o, ./src/ioctl_test_gtofbyp.cpp)
	$(LD) $(notdir $^) -o gtofbyp $(LDFLAGS)
	cp gtofbyp ../bin

clean:
	rm -f *.o *~ core
	rm -f *.d *~ core
	rm -f $(TARGET_NAME)
	rm -f gtof
	rm -f ftog

distclean:
	rm -f *.o *~ core
	rm -f *.d *~ core
	rm -f $(TARGET_NAME)

src:
	@echo $(SRCFILE)
	@echo $(OBJFILE)


#   g++ -o gpu_read_memory src/ioctl_test_ftog.cpp gpu_read_memory.o \
    -D__LINUX__ -g -Wall -I. -I/usr/local/cuda-12.6/targets/x86_64-linux/include \
    -I../gpuctl/src -I../xdma -I/usr/src/nvidia-560.35.03/nvidia/kernel/nvidia \
    -L/usr/local/cuda-12.6/lib64 -lcudart -lcuda
#   nvcc -c gpu_read_memory.cu -o gpu_read_memory.o