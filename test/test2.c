
// clang  -cc1 -triple  z80 -S -O3  -emit-llvm -o test.ll test.c

// clang -cc1 -triple z80 -S -O3 -o test.s test.c


int factorial (int x, int y){
  if (x==0)
    return y;
  else
    return factorial(x-1,y*x);
}
