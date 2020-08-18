kernel:
	@gcc -ffreestanding -fpic -fno-stack-protector -fshort-wchar -mno-red-zone -mgeneral-regs-only -mabi=ms -Wall -Wextra -Wpedantic -O3 -o main64.o -c src/main.c
	@gcc -nostdlib -shared -Wl,-T,src/linker.ld,--build-id=none -Wl,-Bsymbolic -Wl,-znocombreloc -o kernel_x64.elf main64.o -lgcc
	@objcopy -I elf64-x86-64 -O efi-app-x86_64 kernel_x64.elf BOOTX64.EFI

disk:
	@dd if=/dev/zero of=fat.img bs=1k count=1440
	@mformat -i fat.img -f 1440 ::
	@mmd -i fat.img ::/EFI
	@mmd -i fat.img ::/EFI/BOOT
	@mcopy -i fat.img BOOT*.EFI ::/EFI/BOOT

start:
	qemu-system-x86_64 -machine q35 -m 256 -smp 2 -net none \
    	-global driver=cfi.pflash01,property=secure,value=on \
    	-drive if=pflash,format=raw,unit=0,file=OVMF_CODE.fd,readonly=on \
    	-drive if=pflash,format=raw,unit=1,file=OVMF_VARS.fd \
    	-drive if=ide,format=raw,file=fat.img
