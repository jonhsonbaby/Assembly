%include"io.inc"
section .data
string db 'hello000nguynennn', 0dh, 0ah, 0
len equ ($-string)-1
section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov esi, 0
    mov ecx, len
    L1:mov al, [string+esi]
    push eax
    inc esi
    Loop L1
    mov esi,0
    mov ecx,len
    L2:pop eax
    mov [string+esi], al
    inc esi
    Loop L2
    PRINT_STRING string
    xor eax,eax
    ret