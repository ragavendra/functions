#!/usr/bin/env ruby

#Function to generate fibonacci upto limit
#Usage ./fibonacci.rb limit

def prime limit

	#initial array
	prime = [2, 3, 5, 7]
	check_num = prime.last + 1

	limit.times.each do |time|

		prime.each do | prime_num |
			if (prime.last == prime_num)
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
	
puts prime(ARGV[0].to_i).inspect
