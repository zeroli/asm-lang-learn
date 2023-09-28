;hello4.asm
extern printf   ; declare the funciton as external
section .data
    msg db "hello world!", 0
    fmtstr db "this is our string: %s", 10, 0  ; printformat

section .bss
section .text
    global hello

hello:
    push rbp
    mov rbp, rsp
    mov rax, msg        ; second argument for printf
    mov rsp, rbp
    pop rbp
    ret
