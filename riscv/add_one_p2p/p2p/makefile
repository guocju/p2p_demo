CROSS_PREFIX = riscv32-unknown-elf

CC = $(CROSS_PREFIX)-gcc
G++ = $(CROSS_PREFIX)-g++
AS = $(CROSS_PREFIX)-as
LD = $(CROSS_PREFIX)-ld
NM = $(CROSS_PREFIX)-nm
OBJCOPY = $(CROSS_PREFIX)-objcopy
OBJDUMP = $(CROSS_PREFIX)-objdump

config = ./config.lds
obj = intr.o sys_reg.co krnl_log.co main.co printf.co std_lib_util.co xuartlite.co p2p_demo.co

output_name = swf_code
elf = $(output_name).elf
bin = $(output_name).bin
hex = $(output_name).hex
dump = $(output_name).asm

all: $(obj)
	mkdir -p output
	$(LD) $(obj) -o output/$(elf) -T $(config)
	$(OBJDUMP) -Sxtd output/$(elf) > output/$(dump)
	$(OBJCOPY) -O binary output/$(elf) output/$(bin)
	$(OBJCOPY) -O verilog output/$(elf) output/$(hex)
	dd if=output/$(bin) bs=1 skip=2147352144 count=8192 of=output/$(output_name)_itcm.bin
	dd if=output/$(bin) bs=1 skip=0 count=8192 of=output/$(output_name)_dtcm.bin
	cp output/swf_code.bin ../../output/p2p/bin/
	
%.o: src/%.asm
	$(AS) -c $< -g -o $@ -march=rv32im -mabi=ilp32 

%.co: src/%.c
	$(CC) -Wall -g -c $< -o $@ -march=rv32im -mabi=ilp32 

clean:
	rm -rf $(obj) output/*
