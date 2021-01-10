# ASM (Assembly language)

> 汇编语言

## 1.1 前言

本章节着重讲解 [`NASM`] (Netwide Assembler)。当然，这个世界上还有很多其他汇编语言编译器（[`MASM`]、[`FASM`]、[`GOASM`]）。但 [`NASM`] 可能是支持最广的编译器了：从 `16位` 到 `64位`、从 `Linux` 到 `Windows`。另外，[`NASM`] 使用 `Intel` 汇编语法。

## 1.2 如何安装？

打开 [`NASM`] 官网，打开 [**download**](https://www.nasm.us/pub/nasm/releasebuilds) 一栏即可找到各种版本的二进制文件，本章节采用 `NASM v2.15.05` 版本。

因为 `NASM` 没有发布 `.deb` 预编译版本，`apt` 上的版本更新不及时，版本总是慢一拍，所以我们自己编译安装 `nasm`。

嫌麻烦的读者可以直接运行 `sudo apt update && sudo apt install nasm` 直接安装。

```zsh
$ tar -xf nasm-2.15.05.tar.gz

$ ls
nasm-2.15.05  nasm-2.15.05.tar.gz
$ cd nasm-2.15.05

$ ls
AUTHORS      Mkfiles            common        doc      nasm.spec      ndisasm.1    rdoff    version.h
CHANGES      README.md          config        headers  nasm.spec.in   ndisasm.txt  stdlib   version.mac
ChangeLog    SubmittingPatches  configure     include  nasm.spec.sed  ndisasm.xml  test     version.mak
INSTALL      asm                configure.ac  macros   nasm.txt       nsis         tools    version.pl
LICENSE      autoconf           contrib       misc     nasm.xml       output       travis   version.sed
Makefile.in  autogen.sh         disasm        nasm.1   nasmlib        perllib      version  x86
$ ./configure
# 生成 Makefile
$ make
# 编译项目
$ sudo make install
# 安装项目
make: Circular asm/warnings.c <- asm/warnings.time dependency dropped.
/usr/bin/mkdir -p /usr/local/bin
/usr/bin/install -c nasm /usr/local/bin/nasm
/usr/bin/install -c ndisasm /usr/local/bin/ndisasm
/usr/bin/mkdir -p /usr/local/share/man/man1
/usr/bin/install -c -m 644 ./nasm.1 /usr/local/share/man/man1/nasm.1
/usr/bin/install -c -m 644 ./ndisasm.1 /usr/local/share/man/man1/ndisasm.1
```

最后，`nasm` 被我们安装到了 `/usr/local/bin/nasm` 目录下：

```zsh
$ where nasm
/usr/local/bin/nasm
$ nasm -v
NASM version 2.15.05 compiled on Jan 10 2021
```

[`NASM`]: https://www.nasm.us/

[`FASM`]: https://flatassembler.net/

[`GOASM`]: http://www.godevtool.com/
