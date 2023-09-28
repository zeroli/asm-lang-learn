;hello4.asm
extern printf   ; declare the funciton as external
section .data
    msg db "hello world!", 0
    fmtstr db "this is our string: %s", 10, 0  ; printformat

section .bss
section .text
    global hello

hello:
    ;prologue
    push rbp
    push rbx
    push rsi
    push rdi
    mov rbp, rsp
    and rsp, -16

    mov rcx, fmtstr     ; first argument for printf
    mov rdx, msg        ; second argument for printf

    call printf             ; call the function
    mov rax, 0

    ;epilogue
    mov rsp, rbp
    pop rdi
    pop rsi
    pop rbx
    pop rbp
    ret
