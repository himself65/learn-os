section .data
    text db "Hello, world!", 10

section .text
    global _start

_start:
    mov rax, 1      # Syscall write
    mov rdi, 1      # File descriptor: 1 means standard output
    mov rsi, text   # String text
    mov rdx, 14     # String length
    syscall

    mov rax, 60     # Syscall exit
    mov rdx, 0      # Exit status 0, which means success
    syscall
