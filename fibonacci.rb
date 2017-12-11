#!/usr/bin/env ruby

#Function to return the fibonacci series
USAGE = <<ENDUSAGE
Usage:
	 #fibonacci.rb [-h] [-v] [create [-s shell] [-f]] directory [-w writer] [-o output_file] [-n] [-l log_file]
	 fibonacci.rb number 
ENDUSAGE

HELP = <<ENDHELP
   -h, --help       Show this help.
ENDHELP

ARGS = { :shell=>'default', :writer=>'chm' } # Setting default values
if ARGS[:help]
	puts USAGE
	puts HELP if ARGS[:help]
	exit
end

def fibonacci limit

	#initial array
	fib = [0, 1]

	limit.times.each do |time|

		#add last and 2nd last element to the array
		fib.push( fib.last + fib[-2])
	
	end

	fib
end
	
puts fibonacci(ARGV[0].to_i).inspect
