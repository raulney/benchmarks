package main

import (
	"fmt"
)

func main() {
	var count = 83647
	var i = 1
	var num_primes = 0
	var num_not_primes = 0
	var n = 0
	var total = 0
	fmt.Printf("Checking prime for the first: %d numbers\n", count)
	for i < count {
		var flag = 0
		n = i
		var j = 2
		for j <= n/2 {
			if n%j == 0 {
				flag = 1
				break
			}
			j++
		}
		i++
		if flag == 0 {
			num_primes++
		} else {
			num_not_primes++
		}
	}
	total = num_primes + num_not_primes
	fmt.Println("Done!")
	fmt.Println("Primes:", num_primes)
	fmt.Println("Not Primes:", num_not_primes)
	fmt.Println("Total:", total)
}
