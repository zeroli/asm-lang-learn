this example doesn't work!
it will crash at `ungetwc` function call in printf call
need investigation

window-64 ABI calling convension is different from linux ABI calling:
https://learn.microsoft.com/en-us/cpp/build/x64-calling-convention?view=msvc-170

func1(int a, int b, int c, int d, int e, int f);
// a in RCX, b in RDX, c in R8, d in R9, f then e pushed on stack

func2(float a, double b, float c, double d, float e, float f);
// a in XMM0, b in XMM1, c in XMM2, d in XMM3, f then e pushed on stack

func3(int a, double b, int c, float d, int e, float f);
// a in RCX, b in XMM1, c in R8, d in XMM3, f then e pushed on stack

func4(__m64 a, __m128 b, struct c, float d, __m128 e, __m128 f);
// a in RCX, ptr to b in RDX, ptr to c in R8, d in XMM3,
// ptr to f pushed on stack, then ptr to e pushed on stack

and Window-64 has different prologue and epilogue for function calling

after fix, code can run, and print the string message
