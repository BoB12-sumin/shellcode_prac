section .data
    msg: db "Hello World!",10
    len: equ $-msg
    
section .text
    global _start
_start:
    mov rax, 1 ;system call id 1
    mov rdi, 1 ;FD stdout
    mov rsi, msg ;bytes(ADDR) to write
    mov rdx, len ;byte length
    syscall

    mov rax, 0x3c
    mov rdi, 0
    syscall

