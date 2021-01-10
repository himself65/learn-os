as=arm-none-eabi-as
gcc=arm-none-eabi-gcc
ld=arm-none-eabi-ld
nm=arm-none-eabi-nm
objcopy=arm-none-eabi-objcopy
objdump=arm-none-eabi-objdump

all:
	${gcc} -nostdlib -o csum.elf -T csum.ld csum.c startup.s
	${nm} csum.elf
	@${objcopy} -O binary csum.elf csum.bin
	@${objdump} -C -d -S --no-show-raw-insn csum.elf > csum.lst
