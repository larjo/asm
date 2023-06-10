#include <stdio.h>
#include <stdlib.h>

extern int fib(int);

int main(int argc, char *argv[])
{
    if (argc == 2)
    {
        int n = atoi(argv[1]);
        printf("Fibonacci of %d is %d\n", n, fib(n));
    }
    else
    {
        printf("Usage fibasm n\n");
    }
}