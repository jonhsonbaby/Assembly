%include"io.inc"
section .data
msg1 db 'Hello, brave new world', 0h
msg2 db 'this is how we recycle in NASM', 0h
section .bss
input resd 1
section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov eax, 0x3
    mov ebx, 0x1
    mov ecx, input
    PRINT_STRING input
    ret