# UEFI

> Unified Extensible Firmware Interface

## 1.1 这是什么？

`UEFI`（曾经称为 `EFI`） 是为了取代传统 `BIOS` 而推出的标准。
相比于 `BIOS`，它相当于一个32位的操作系统，并且封装了底层的硬件和固件、模块化的提供各种功能（例如网络服务，`GUI`……），
支持 `C` 语言（而 `BIOS` 需要汇编语言）。

## 1.2 如何构建？

> 待补充

## 1.3 如何开发？

`EFI` 是 `UEFI` 上的一种文件

目前有两种 `EFI` 应用程序构建方式，`GNU-EFI`（GNU社区为了将 `GNU Toolchain` 兼容到 `ELF` 开发而创建的项目）。
而另外一种是由 `TianoCore` 社区维护的官方项目。
