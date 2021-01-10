# Makefile

## 目录

[Hello, World](../../../examples/makefile/01-hello-world/README.md)

[变量](../../../examples/makefile/02-variable/README.md)

## [自动变量]

- `$@`
  目标变量
- `$%`
  [归档文件] 的目标成员名， 如果目标是 `foo.a(bar.o)`，`$%` 是 `bar.o`，`$@` 是 `foo.a`
- `$<`
  第一个前置条件
- `$?`
  所有的前置条件
- `$^`
  扩展为当前规则的整个依赖列表
- `$+`
  类似 `$^`，但它保留了依赖文件中重复出现的文件
- `$|`
  所有的有序依赖
- `$*`
  表示目标规则中%以及%之前的部分
- `$^`
  隐含规则中匹配的匹配模式的字段

## `.PHONY`

`.PHONY` 声明目标不是一个文件

## 变量赋值

= 是最基本的赋值，等号右边可以是任意位置的变量

:= 是覆盖之前的值，等号右边只能是之前出现过的变量

?= 是如果没有被赋值过就赋予等号后面的值

+= 是添加等号后面的值

### examples

```makefile
x = foo
y = $(x) bar
x = xyz
```

y 是 `xyz bar`

```makefile
x := foo
y := $(x) bar
x := xyz
```

y 是 `foo bar`

## References

<https://www.gnu.org/software/make/manual/html_node>

[归档文件]: https://www.gnu.org/software/make/manual/html_node/Archives.html#Archives

[自动变量]: <https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html>
