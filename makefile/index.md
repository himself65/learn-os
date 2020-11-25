# Makefile

> Makefile学习笔记

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
