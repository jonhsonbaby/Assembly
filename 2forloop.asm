; Bài 1: Viết chương trình cho vòng lặp
; Bài 2: Viết chương trình tìm số lớn nhất trong 3 số
%include"io.inc"
section .data
number dd 2 
section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov eax, 0
    mov esi, 11
    L1:
    mov ecx, 10
        L2:
            add eax
            cmp ecx, 0
            dec ecx
            jne L2
            dec esi
            cmp esi, 0
            jne L1
    PRINT_DEC 4, eax
    ret