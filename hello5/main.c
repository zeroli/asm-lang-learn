#include <stdio.h>

int main()
{
    printf("hello main\n");
    extern const char* hello();
    printf("msg from hello()=%s\n", hello());
}
