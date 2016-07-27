count = 83647
i = 1
num_primes = 0
num_not_primes = 0
flag = 0
n = 0
print("Checking prime for the first: {} numbers".format(count))
while i < count:
    flag = 0
    n = i
    # check for factors
    j = 2
    while j <= n/2:
        if (n % j) == 0:
            flag = 1
            break
        j += 1
    i += 1
    if flag == 0:
        num_primes += 1
    else:
        num_not_primes += 1
total = num_primes + num_not_primes
print("Done!")
print("Primes: {}".format(num_primes))
print("Not Primes: {}".format(num_not_primes))
print("Total: {}".format(total))
