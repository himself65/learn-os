%include "../linux64.inc"

section .rodata
    texta db "Argument(s): ",0
    textb1 db "Argument #",0
    textb2 db ": ",0
    newline db 10,0

section .bss
    argc resb 8
    argPos resb 8

section .text
    global _start
_start:
    mov rax, 0
    mov [argPos], rax

    print texta
    pop rax
    mov [argc], rax
    printVal rax
    print newline

_printArgsLoop:
    print textb1
    mov rax, [argPos]
    inc rax
    mov [argPos], rax
    printVal rax
    print textb2
    pop rax
    print rax
    print newline

    mov rax, [argPos]
    mov rbx, [argc]
    cmp rax, rbx
    jne _printArgsLoop

    exit
