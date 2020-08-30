# dd

`dd` 用于读取、转换和输出文件。

## Usage

```bash
# 16MB大小的空文件
dd if=/dev/zero of=flash.bin bs=4096 count=4096

# 把 add.bin 文件追加到 `flash.bin` 的开头
dd if=add.bin of=flash.bin bs=4096 conv=notrunc

# 我们可以看到后面都是0
hexdump -C flash.bin
# 00000000  05 00 a0 e3 04 10 a0 e3  00 10 81 e0 fe ff ff ea  |................|
# 00000010  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
# *
# 01000000
```

## References

<https://www.runoob.com/linux/linux-comm-dd.html>
