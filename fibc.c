#include <stdio.h>
#include <stdlib.h>

int fibc(int n)
{
    if (n <= 1)
    {
        return n;
    }
    return fibc(n - 1) + fibc(n - 2);
}

int main(int argc, char *argv[])
{
    if (argc == 2)
    {
        int n = atoi(argv[1]);
        printf("Fibonacci c of %d is %d\n", n, fibc(n));
    }
    else
    {
        printf("Usage fibc n\n");
    }
}
