%include 'io.inc'
section .bss
fibonaci resd 10
section .data
num dd 'f'
section .text
mot:
    mov edi, fibonaci
    stosd
    mov ecx, 1
    mov esi, 0
    jmp print
hai:
    mov edi, fibonaci
    stosd
    stosd   
    mov ecx, [num]
    mov esi, 0
    jmp print 
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    xor ebx, ebx
; Khoi tao   
    mov eax, 1
    mov ebx, 1
    mov ecx, [num]
; Kiểm tra điều kiện khởi tạo
    cmp ecx, 1
    jle mot
    cmp ecx, 2
    je hai
    sub ecx, 2
; Cách 1 ==================================================
;    fibo:
;        mov edx, eax
;        add eax, ebx
;        PRINT_DEC 4, eax
;        mov ebx, edx
;        loop fibo
; Cách 2 ==================================================
;    mov edi, fibonaci
;    stosd
;    stosd
;    fibo:
;        mov edx, eax
;        add eax, ebx
;        stosd
;        mov ebx, edx
;        loop fibo
; In day ra man hinh
    mov ecx, [num]
    mov esi, 0
    print:
        mov eax, [fibonaci+esi]
        add esi, 4
        PRINT_DEC 4, eax
        loop print
    ret