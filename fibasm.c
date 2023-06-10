#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// In LP64 data model (used by linux):
// long is 64 bits
// int is 32 bits
// short is 16 bits

extern long fib(int);

int main(int argc, char *argv[])
{
    if (argc == 2)
    {
        int n = atoi(argv[1]);
        printf("Fibonacci of %d is %ld\n", n, fib(n));
    }
    else
    {
        printf("Usage fibasm n\n");
    }
}
