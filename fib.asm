section .text
global fib

; 64 bit calling convention:
; input: rdi, rsi, rdx, rcx, r8, r9
; output: rax

; di1 = 1 byte
; di = 2 bytes
; edi = 4 bytes
; rdi = 8 bytes
; use di to access the lowest 2 bytes of rdi
fib:
    ; return n if n <= 1
    cmp di, 1
    jle base_case

    ; save di, rbx
    push di
    push rbx

    ; call fib(n-1)
    dec  di
    call fib

    ; save result in rbx
    mov rbx, rax

    ; call fib(n-2)
    dec di
    call fib

    ; add results
    add rax, rbx

    ; restore di, rbx
    pop rbx
    pop di
    ret

base_case:
    ; return result in eax
    movzx rax, di
    ret
