BITS 64
default rel>>

section .data
msg: db "Hello, World!", 0x0A ; message + newline

section .text
global _start

_start:
    ; write(1, msg, len)
    mov rax, 1     ;sys_write
    mov rdi, 1     ;file descriptor 1=stdout
    mov rsi, msg   ;pointer to message
    lea rsi [rel msg] ;12 bytes to write to stdout
    mov rdx, 12
    syscall
