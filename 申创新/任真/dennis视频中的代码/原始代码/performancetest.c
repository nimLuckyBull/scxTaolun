/*
discard """
peformancetest.nim,performancetest.c,performancetest.py
用求前100000000个数的素数,来测试c,nim,python的性能
"""
*/


#include <stdlib.h>
#include <math.h>

char* eratosthenes(int n)
{
  char* sieve = calloc(n+1,sizeof(char));
  sieve[0] = 1; sieve[1] = 1;
  int m = (int) sqrt((double) n);
   
  int i,j;
  for(i = 0; i <= m; i++) {
    if(!sieve[i]) {
      for (j = i*i; j <= n; j += i)
        sieve[j] = 1;
    }
  }
  return sieve;
}

int main() {
  eratosthenes(100000000);
}

/*
函数原型：void *calloc(size_t n, size_t size)；
功 能： 在内存的动态存储区中分配n个长度为size的连续空间，函数返回一个指向分配起始地址的指针；如果分配不成功，返回NULL。

与malloc的区别：
calloc在动态分配完内存后，自动初始化该内存空间为零，而malloc不初始化，里边数据是随机的垃圾数据。

用 法:
void *calloc(size_t n, size_t size)；
一般使用后要使用 free(起始地址的指针) 对内存进行释放，不然内存申请过多会影响计算机的性能，以至于得重启电脑。如果使用过后不清零，还可以使用指针对该块内存进行访问。
*/

//但运行有错误,performancetest.c:(.text+0x3c)：对‘sqrt’未定义的引用

