# UEFI

## 基础

### UEFI 系统表

### Memory（内存）

`AllocatePool`, `FreePool` 用于分配和释放小的 `Buffer`，以**8-byte**对齐，此服务用于管理数据结构。

`AllocatePages`, `FreePages` 用于分配和释放大的 `Buffer`，以**4 KB**对其，
此服务允许 `Buffer` 分配在任何可用的地址，包括特殊地址，或者低于特殊地址。

#### 内存分配注意事项

`UEFI 驱动` 不应该猜测系统内存的架构。因此，强烈不推荐在低于特定内存地址分配指定内存。
`AllocatePool()` 不允许调用分配特定内存，所以此服务对于跨平台的 `UEFI 驱动` 是安全的。

`AllocatePages()` 服务确实具有允许指定特定地址或指定特定地址范围的模式。
`AllocateAnyPages` 的分配类型使用起来是安全的，并且增加了UEFI驱动程序在不同平台上的兼容性。
`AllocateMaxAddress` 和 `AllocateAddress` 的分配类型可能会降低平台兼容性，因此不鼓励使用它们。

**注意**：尽管分配服务允许特定的内存分配，但不要在UEFI驱动程序中分配特定的地址。
在特定地址分配缓冲区可能会导致错误，包括某些平台上的灾难性故障。
`UEFI驱动` 中的内存分配应该是动态的。

**提示**：在访问分配的缓冲区之前，请务必要检查函数的返回状态，确定内存分配请求是否成功。

例：

```c
#include <Uefi.h>
#include <Library/UefiBootServicesTableLib.h>

EFI_STATUS Status;
EXAMPLE_DEVICE *Device;

//
// Allocate a buffer for a data structure
//
Status = gBS->AllocatePool (
                EfiBootServicesData,
                sizeof (EXAMPLE_DEVICE),
                (VOID **)&Device
                );
if (EFI_ERROR (Status)) {
  return Status;
}

//
// Free the allocated buffer
//
Status = gBS->FreePool (Device);
if (EFI_ERROR (Status)) {
  return Status;
}
```

### Handles

### Images

### 事件（Events）

## 常用代码设计

最重要的规则就是使用 `ANSI C` 标准的编译器，避免任何编译器特殊语言扩展。
同样，避免使用汇编语言。

## References

<https://wiki.osdev.org/UEFI>

<https://edk2-docs.gitbook.io>
