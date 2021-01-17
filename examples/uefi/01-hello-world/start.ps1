qemu-system-x86_64 -machine q35 -m 256 -smp 2 -net none `
    -global driver=cfi.pflash01,property=secure,value=on `
    -drive if=pflash,format=raw,unit=0,file=OVMF_CODE.fd,readonly=on `
    -drive if=pflash,format=raw,unit=1,file=OVMF_VARS.fd `
    -drive if=ide,format=raw,file=fat.img
