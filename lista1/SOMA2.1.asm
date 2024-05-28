
.globl _start

_start:
    # Ler o primeiro número inteiro
    li a7, 5           # Código de syscall para ler inteiro
    ecall               # Chamar a syscall
    mv t0, a0          # Armazenar o primeiro número em t0

    # Ler o segundo número inteiro
    li a7, 5           # Código de syscall para ler inteiro
    ecall               # Chamar a syscall
    mv t1, a0          # Armazenar o segundo número em t1

    # Somar os números
    add t2, t0, t1

    # Imprimir a soma
    li a0, 1           # Descritor de arquivo stdout (1)
    mv a1, t2          # Número a ser impresso
    li a7, 1           # Código de syscall para imprimir inteiro
    ecall               # Chamar a syscall

    # Sair do programa
    li a7, 10          # Código de syscall para sair (10)
    ecall               # Chamar a syscall

