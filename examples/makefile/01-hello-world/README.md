# 什么是 `Makefile`？

通常来说，`Makefile` 描述了文件和程序之间的对应关系。

## Hello, world

参见 [Makefile](./Makefile)

当你仅仅输入 `make` 的时候，会执行第一个指令。例子中，如果 `echo` 在 `all` 之上，那么 `make` 会相当于 `make echo`

`Makefile` 可以执行当前系统环境（一般是Linux）中的所有程序和命令，所以你可以将 `gcc` 替换成你系统中的 `/usr/bin/gcc`
