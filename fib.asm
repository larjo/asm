global fib

; rdi = n
; use di to access the lowest 2 bytes of rdi
; di1 = 1 byte
; di = 2 bytes
; edi = 4 bytes
; rdi = 8 bytes
fib:
    ; return n if n <= 1
    cmp di, 1
    jle base_case

    ; save di
    push di

    ; call fib(n-1)
    dec  di
    call fib

    ; save result
    push rax

    ; call fib(n-2)
    dec di
    call fib

    ; add results
    pop rbx
    add rax, rbx

    ; restore di and return
    pop di
    ret

base_case:
    ; return result in eax
    movzx rax, di
    ret
