%include 'io.inc'
section .bss
var2 resd 6 
section .data
var1 dd 1,2,3,4,5,6 
len equ ($-var1)/4
section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    cld
    mov ecx, len
    mov esi, var1
    mov edi, var2
    rep movsd
    mov ecx, len
    mov esi, 0
    L1:
        mov eax, [var2+esi]
        add esi, 4
        PRINT_DEC 4, eax
        loop L1
    ret