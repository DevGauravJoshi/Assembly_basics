section .bss
    ; variables

section .data
    ; constants
    hello: db "Hi Mom!", 10   ; string to print
    helloLen: equ $-hello     ; length of a string

section .text
    global _start

_start:
    mov rax,1           ; sys_write
    mov rdi,1           ; stdout
    mov rsi,hello       ; message to write
    mov rdx, helloLen   ;message length
    syscall             ; call kernel

    mov rax,60          ;sys_exit
    mov rdi,0           ;error code 0 (success)
    syscall