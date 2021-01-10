# ASM

code example and exercise for book named "x86 汇编语言：从实模式到保护模式", ISBN 978-7-121-18799-5

## Requirement

- [NASM](https://www.nasm.us/)

- [QEMU](https://www.qemu.org/)

- [GDB](http://www.gnu.org/software/gdb)

## Usage

```bash
nasm -f bin 1.asm -o 1.bin
```

```bash
# running 1.img using qemu-system-x86_64
# '-m' is short for memory size
qemu-system-x86_64 ./1.bin -m 512
# same as
qemu-system-x86_64 --drive file=1.bin,index=0,media=disk,format=raw -m 512
```

## Debug using `GDB`

Firstly, you need start you qemu with hanging, `-S` meaning to 'freeze CPU at start up'

```bash
qemu-system-x86_64 -s -S -hda ./1.bin -nographic
```

Now, turn on the GDB

> reference: https://stackoverflow.com/questions/14242958/debugging-bootloader-with-gdb-in-qemu

```powershell
PS C:\Users\Himself65> gdb
(gdb) target remote localhost:1234
(gdb)set architecture i8086
(gdb) br *0x7c00
(gdb) c

Breakpoint 1, 0x00007c00 in ?? ()
(gdb) x/i $eip
=> 0x7c00:      jmp    0x7c3e
```

More details on `gdb` see [document](https://sourceware.org/gdb/current/onlinedocs/gdb/)

NSAM document see [nasm.us](https://www.nasm.us/xdoc)
