# 目标文件里有什么

## 格式

```zsh
$ make log
file ./1-shared.out
./1-shared.out: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=6d0cc2cdda91ddc616fd82d647913c2b461bc113, for GNU/Linux 3.2.0, not stripped
file ./1-static.out
./1-static.out: ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=10ae5e6d1b32d3922e7849a7765a1591a893d089, for GNU/Linux 3.2.0, not stripped
```

`SYSV` 指的是 `UNIX System V`

操作系统需要保护用户的代码不被篡改（当然有办法修改，例如
`Windows API` 的 `ReadProcessMemory` `WriteProcessMemory` `VirtualProtect`）

[分页]: https://wiki.osdev.org/Paging
