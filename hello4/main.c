#include <stdio.h>

int main()
{
    printf("hello main\n");
    extern void hello();
    hello();
}
