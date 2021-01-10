# OS 学习指南

> 项目尚未完成

本项目尝试教你从工程角度学习 `操作系统`（Operating System） 开发。包括编译工具链、开发语言、以及 `OS` 相关知识。

## 前言

### 预备知识

本项目不是一个关于如何入门编程的书。它（至少）面向已经掌握一些计算机知识，但又想要了解计算机操作系统的读者。

## 为什么有此项目?

笔者学习以来操作系统来，读了很多书籍和源代码，网络上不乏一些非常优秀的内容，但是大部分都没有将操作系统的开发的概念统一起来，本项目从自顶向下，从工程和实践角度深入研究了解操作系统的开发。

## 开发环境

笔者在 `Windows 10` 使用 `WSL` 进行开发和调试。当然，你可以直接使用 `Ubuntu` 发行版。本文使用的工具尽量考虑可以在不同 `Linux` 发行版下使用。

```zsh
$ cat /etc/lsb-release
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=20.04
DISTRIB_CODENAME=focal
DISTRIB_DESCRIPTION="Ubuntu 20.04.1 LTS"
```

文中的代码均会通过 `GitHub Actions` 测试

## 目录

- 语言
  - [汇编语言](./doc/asm/README.md)

- 工具链
  - [C/C++ 工具链](./doc/gnu-toolchain/README.md)
    - [Makefile](./doc/gnu-toolchain/makefile/README.md)
    - [Linker Scripts](./doc/gnu-toolchain/linker-scripts/README.md)
  - Rust 工具链 (TODO)

- 实用工具
  - [Linux 实用工具](./doc/linux-utilities/README.md)
    - [DD](./doc/linux-utilities/dd.md)

- [操作系统](./doc/os/README.md)
