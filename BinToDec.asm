%include"io.inc"
section .data
arr dd 1,0,0,1,0,1
len equ ($-arr)/4
section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov esi, 0h
    mov ecx, len
    l1:
    mov eax, [arr+esi]
    mov edx, eax
    push edx
    add esi,4
    dec ecx
    cmp ecx, 0h
    jne l1
    l2:
    pop eax
    mov eax, eax
    PRINT_DEC 4, eax
    sub esi, 4
    cmp esi, 0
    jne l2
    ret