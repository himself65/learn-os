# ARM

you can find the GNU ARM Embedded Toolchain in
<https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads>

```bash
export PATH=/path/to/arm-none-eabi/bin:$PATH
```

## Usage

```bash
qemu-system-arm -M connex -pflash flash.bin -nographic -serial none
```
