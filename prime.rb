#!/usr/bin/env ruby

#Function to generate fibonacci upto limit
#Usage ./fibonacci.rb limit
# prime nos
#[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79]

require 'benchmark'

def prime limit

	#initial array
	prime = [2]
	check_num = prime.last + 1

	limit.times.each do |time|

		prime.each do | prime_num |
			
			#save time not iterating more than half of prime nos
			if (prime_num > (check_num/2))
					prime.push ( check_num )
					break
			end

			#not prime do not push
			#if ((check_num % prime_num == 0) && (check_num != prime_num))
			break if ((check_num % prime_num) == 0) 
			
		end
			check_num = check_num + 1
		
		#exit loop if result more than limit
		if prime.last >= limit
			
			#remove last element
			prime.pop

			break
		end
	end

	prime
end
	
puts Benchmark.measure { 
puts prime(ARGV[0].to_i).inspect
}
