%include"io.inc"
section .data
section .text
next:
    PRINT_STRING 'Khong la so nguyen to'
    ret
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    xor edx, edx
    mov eax, 27
    mov ecx, eax
    shr ecx, 1
    mov esi, 2
    L1:
        push eax
        div esi
        cmp edx, 0
        je next
        pop eax
        inc esi
        loop L1
    PRINT_STRING 'La so nguyen to'    
    ret