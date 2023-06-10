all: fib

fib: fib.o fibasm.o
	gcc fib.o fibasm.o -z noexecstack -no-pie -o fib

fibasm.o : fibasm.asm
	nasm -f elf64 -gdwarf fibasm.asm

fib.o : fib.c
	gcc -c fib.c

clean:
	rm fib fib.o fibasm.o
