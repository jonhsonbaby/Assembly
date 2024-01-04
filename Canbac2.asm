%include 'io.inc'
section .data
num dd 4
format db "Căn bậc 2 của %d là %f", 10, 0
section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    fld dword [num]
    fsqrt 
    mov eax, [num]
    push dword [num]
    push dword format
    call printf
    ret