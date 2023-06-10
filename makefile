all: fibc fibasm

fibc: fibc.o
	gcc fibc.o -z noexecstack -no-pie -o fibc

fibc.o: fibc.c
	gcc -c fibc.c

fibasm: fib.o fibasm.o
	gcc fib.o fibasm.o -z noexecstack -no-pie -o fibasm

fib.o : fib.asm
	nasm -f elf64 -gdwarf fib.asm

fibasm.o : fibasm.c
	gcc -c fibasm.c

clean:
	rm fibc fibasm fib*.o
