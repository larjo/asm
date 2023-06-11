section .text
global fib

; 64 bit calling convention:
; input: rdi, rsi, rdx, rcx, r8, r9
; output: rax

; dil = 1 byte
; di = 2 bytes
; edi = 4 bytes
; rdi = 8 bytes
fib:
    ; return n if n <= 1
    cmp rdi, 1
    jle base_case

    ; save rdi, rbx
    push rdi
    push rbx

    ; call fib(n-1)
    dec rdi
    call fib

    ; save result in rbx
    mov rbx, rax

    ; call fib(n-2)
    dec rdi
    call fib

    ; add results
    add rax, rbx

    ; restore rdi, rbx
    pop rbx
    pop rdi
    ret

base_case:
    ; return result in rax
    mov rax, rdi
    ret
