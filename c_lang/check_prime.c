#include <stdio.h>
int main()
{
  int n, j, flag = 0;
  // long count = 2147483647;
  long count = 83647;
  long i = 1;
  long num_primes = 0;
  long num_not_primes = 0;
  printf("Checking prime for the first: %li numbers\n",count);
  while (i < count) {
    flag = 0;
    n = i;
    j = 2;
    while (j<=n/2) {
      // printf("%d\n",n);
      if(n%j==0)
      {
        flag=1;
        break;
      }
      j++;
    }
    i++;
    if (flag==0)
    num_primes++;
    else
    num_not_primes++;
  }
  long total = num_primes + num_not_primes;
  printf("Done!\n");
  printf("Primes: %li\n", num_primes);
  printf("Not Primes: %li\n", num_not_primes);
  printf("Total: %li\n", total);
  return 0;
}
