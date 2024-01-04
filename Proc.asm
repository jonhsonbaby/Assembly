%include"io.inc"
section .data
var1 dd 2
var2 dd 123
section .text

addtwo:
    push ebp
    mov ebp, esp
    mov esi, [ebp+8]
    mov eax, [esi]
    mov esi, [ebp+12]
    add eax, [esi]
    pop ebp
    ret 8
      
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    push var1
    push var2
    call addtwo
    PRINT_DEC 4, eax
    ret 