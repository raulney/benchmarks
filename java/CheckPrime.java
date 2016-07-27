public class CheckPrime {
  public static void main(String[] args) {
    int count = 83647;
  	int i = 1;
  	int num_primes = 0;
  	int num_not_primes = 0;
  	int n = 0;
  	int total = 0;
    int flag = 0;
    System.out.println("Checking prime for the first: "+count+" numbers");
    while(i < count) {
        flag = 0;
        n = i;
        int j = 2;
        while(j <= n/2){
          if(n%j == 0){
            flag = 1;
            break;
          }
          j++;
        }
        i++;
        if (flag == 0) {
          num_primes++;
        } else {
          num_not_primes++;
        }
    }
    total = num_primes + num_not_primes;
  	System.out.println("Done!");
  	System.out.println("Primes: "+ num_primes);
  	System.out.println("Not Primes: "+ num_not_primes);
  	System.out.println("Total: "+ total);
  }
}
