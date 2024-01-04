%include'io.inc'
section .text
soduong:
    PRINT_STRING 'so nguyen duong'
    ret
soam:
    PRINT_STRING 'so nguyen am'
    ret
global main
main:
    ;write your code here
    xor eax, eax
    mov ax, 6
    and ax, 8000h
    jz soduong
    jmp soam    
    ret