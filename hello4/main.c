#include <stdio.h>

int main()
{
    puts("hello main");
    extern void hello();
    hello();
}
