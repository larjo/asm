all: fibc fibasm

fibc: fibc.c
	gcc fibc.c -O3 -o fibc

fibasm: fib.o fibasm.o
	gcc fib.o fibasm.o -o fibasm

fib.o: fib.asm
	nasm -f elf64 -Ox fib.asm

fibasm.o: fibasm.c
	gcc -c -O3 fibasm.c

clean:
	rm fibc fibasm fib*.o
