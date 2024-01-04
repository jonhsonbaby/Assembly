%include"io.inc"
section .data
section .text
; Tìm giá trị lơn nhất
maxb:
    mov eax, ebx
    cmp eax, ecx
    jl maxc
    ret
maxc:
    mov eax, ecx
    ret
max:
    cmp eax,ebx
    jl maxb
    cmp eax, ecx
    jl maxc
    ret
; Tìm giá trị nhỏ nhất    
minb:
    mov eax, ebx
    cmp eax, ecx
    jge minc
    ret
minc:
    mov eax, ecx
    ret
min:
    cmp eax,ebx
    jge minb
    cmp eax, ecx
    jge minc
    ret    
global main
main:
    mov ebp, esp; for correct debugging
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    mov eax, -50
    mov ebx, 20
    mov ecx, 10
    call max
    PRINT_STRING 'Gia tri lon nhat: '
    PRINT_DEC 4, eax
    
    mov eax, -50
    mov ebx, 20
    mov ecx, 10
    call min
    NEWLINE
    PRINT_STRING 'Gia tri nho nhat: '
    PRINT_DEC 4, eax
        ret