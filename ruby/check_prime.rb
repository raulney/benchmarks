count = 83647
i = 1
num_primes = 0
num_not_primes = 0
flag = 0
n = 0
puts "Checking prime for the first: %d numbers" % count
while (i < count) do
  flag = 0
  n = i
  # check for factors
  j = 2
  while (j <= n/2) do
    if (n % j) == 0 then
      flag = 1
      break
    end
    j += 1
  end
  i += 1
  if flag == 0 then
    num_primes += 1
  else
    num_not_primes += 1
  end
end
total = num_primes + num_not_primes
puts "Done!"
puts "Primes: %d" % num_primes
puts "Not Primes: %d" % num_not_primes
puts "Total: %d" % total
