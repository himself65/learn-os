%include "../linux64.inc"

section .data
    _lf db 0ah, 00h

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

    pop rcx ; get argc
next_arg:
    cmp rcx, 0  ; if argc == 0
    jz exit_program
    pop rsi ; rsi = argv[i]

    call putslf   ; print(rsi)
    dec rcx ; argc--
    jmp next_arg
    
exit_program:
    exit

; function definitions

putslf:
    call puts
    push rsi
    mov rsi, _lf
    call puts
    pop rsi
    ret

puts:
    push rcx
    push rdx
    push rax
    push rdi

    mov rdx, rsi
    call strlen

    mov rax, SYS_WRITE
    mov rdi, STDOUT

    syscall

    pop rdi
    pop rax
    pop rdx
    pop rcx
    ret

strlen:
    push rsi,
    mov rsi, rdx
strlen_next:
    cmp byte [rdx], 0
    jz strlen_done
    inc rdx
    jmp strlen_next
strlen_done:
    sub rdx, rsi
    pop rsi
    ret
