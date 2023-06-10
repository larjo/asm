global fib:function
global test:function

; rdi = n
fib:
    ; return n if n <= 1
    cmp  rdi, 1
    jle base_case

    ; save rdi
    push rdi

    ; call fib(n-1)
    dec  rdi
    call fib

    ; save result
    push rax

    ; call fib(n-2)
    dec rdi
    call fib

    ; add results
    pop rbx
    add rax, rbx

    ; restore rdi and return
    pop rdi
    ret

base_case:
    ; return result in rax
    mov rax, rdi
    ret

test:
    mov rdx, rdi
    mov rax, 1000
    mul rdx
    ret