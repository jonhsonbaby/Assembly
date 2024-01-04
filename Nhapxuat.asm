%include'io.inc'
section .bss
    array resb 10
section .data
section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    ; nhập giá trị vào mảng
    mov ecx, 10 ; số phần tử của mảng
    mov ebx, array ; địa chỉ của mảng
    mov esi, 0 ; biến đếm
    L1:
        mov eax, 3
        mov ecx, 0
        mov ebx, array
        add ebx, esi
        mov edx, 1
        int 80h
        inc esi
        loop L1
    ret