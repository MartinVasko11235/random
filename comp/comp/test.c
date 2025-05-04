#include <stdio.h>

int f(int a)
{
    if (a > 0)
    {
        return 11;
    }
}

int main()
{
    int a = 10;
    int b = f(a);
    printf("%d\n", b);
    return 0;
}