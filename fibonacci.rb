#Function to return the fibonacci series

limit = 100

fib = [0, 1]

limit.times.each do |time|
  fib.push( fib.last + fib[-2])
end
