# `AT&T` 语法和 `Intel` 语法的差别

## 历史

历史上，`UNIX` 运行在 `PDP-11` 上（一款 `DEC` 公司发售的十六位电脑），其用了一套非常简单的指令集。几乎每个指令都只有两个操作数，每个操作数可以具有以下八个寻址模式之一。如下：

```
0n  Rn        register
1n  (Rn)      deferred
2n  (Rn)+     autoincrement
3n  @(Rn)+    autoincrement deferred
4n  -(Rn)     autodecrement
5n  @-(Rn)    autodecrement deferred
6n  X(Rn)     index
7n  @X(Rn)    index deferred
```

通过一些巧妙的方式，在 `R7` 程序计数器（program counter）上重新使用某些寻址模式，可以对立即数和直接地址进行编码。

```
27  #imm      immediate
37  @#imm     absolute
67  addr      relative
77  @addr     relative deferred
```

因为 `UNIX` 的 `tty` 驱动<sup>[这是什么？](https://www.oreilly.com/library/view/linux-device-drivers/0596005903/ch18.html)</sup>使用 `@` 和 `#` 当作控制字符，所以 `$` 取代了 `#`，`*` 取代了 `@`。

`PDP-11` 指令中的第一个操作数指的是源操作数，而第二个操作数指的是目的操作数。这一点在汇编语言的操作数顺序中得到了体现，即先源后目的。例如，操作码：`011273`，意思是 `mov (R2),R3`，指将R2指向的内容移至R3。

## 主要区别

`AT&T` 语法需要在常数前加 `$`，在寄存器前加 `%`。

`AT&T` 语法先写源操作数，Intel 语法先写目标操作数。

```m68k
# AT&T syntax
movl $4, %eax
```

```nasm
; Intel syntax
mov eax, 4
```

取址方式，`AT&T` 语法是 `offset(base, index, width)`，而 `Intel` 语法是 `[Index * WIDTH + BASE + OFFSET]` 方式

```m68k
movb (%ebx, %esi, 1), %al
```

```nasm
mov al, byte [ebx + esi]
```

## 参考

What was the original reason for the design of AT&T assembly syntax?: <https://stackoverflow.com/questions/42244028/what-was-the-original-reason-for-the-design-of-att-assembly-syntax>

Linux assemblers: A comparison of GAS and NASM: <https://developer.ibm.com/technologies/linux/articles/l-gas-nasm>

Assembly Language Step-By-Step, 3rd: <https://book.douban.com/subject/3781682/>