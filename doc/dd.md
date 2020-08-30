# dd

`dd` 用于读取、转换和输出文件。

## Usage

```bash
# 16MB大小的空文件
dd if=/dev/zero of=flash.bin bs=4096 count=4096

# 把 add.bin 文件追加到 `flash.bin` 的开头
dd if=add.bin of=flash.bin bs=4096 conv=notrunc
```

## References

<https://www.runoob.com/linux/linux-comm-dd.html>
