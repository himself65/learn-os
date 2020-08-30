# LD

![Compilation Process](../../images/compilation-process.jpg)

`ld` 通过组合一系列的 `object` 和 `架构` 文件，重定位他们的数据与绑定的符号引用。

通常， `ld` 是编译的最后一步。

`.text`: 程序代码
`.rodata`: 只读数据
`.data`: 可读、可写已初始化数据
`.bss`: 可读、可写未初始化数据

## References

https://sourceware.org/binutils/docs/ld

http://wen00072.github.io/blog/2014/03/14/study-on-the-linker-script

https://sourceware.org/binutils/docs/binutils/objdump.html
