#!/bin/bash
#
cmds=("/usr/bin/time -f%e\t%M -o c_lang.csv -a ./c_lang/check_prime" "/usr/bin/time -f%e\t%M -o python2.csv -a python ./python/check_prime.py" "/usr/bin/time -f%e\t%M -o python3.csv -a python3 ./python3/check_prime.py" "/usr/bin/time -f%e\t%M -o pypy.csv -a pypy ./python/check_prime.py" "/usr/bin/time -f%e\t%M -o go_lang.csv -a ./go/check_prime" "/usr/bin/time -f%e\t%M -o ruby.csv -a ruby ./ruby/check_prime.rb" "cd java" "/usr/bin/time -f%e\t%M -o ../java.csv -a java CheckPrime")
for i in "${cmds[@]}"
do
  echo "Running $i"
  $i
done
