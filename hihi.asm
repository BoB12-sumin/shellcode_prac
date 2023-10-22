section .data
    msg: db "Hello World!",10
    len: equ $-msg
    
section .text
    global _start
_start:
    mov eax, 4 ;system call id 1
    mov ebx, 1 ;FD stdout
    mov ecx, msg ;bytes(ADDR) to write
    mov edx, len ;byte length
    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80
