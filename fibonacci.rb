#!/usr/bin/env ruby

#Function to generate fibonacci upto limit
#Usage ./fibonacci.rb limit


def fibonacci limit

	#initial array
	fib = [0, 1]

	limit.times.each do |time|

		#add last and 2nd last element to the array
		fib.push( fib.last + fib[-2])

		#exit loop if result more than limit
		if fib.last >= limit
			
			#remove last element
			fib.pop

			break
		end
	end

	fib
end
	
puts fibonacci(ARGV[0].to_i).inspect
