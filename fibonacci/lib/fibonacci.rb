
require 'pry'
require 'benchmark'

 #okay so we need a shortcut here, probably an easy enough formula somewhere
 #basically we need to cut down these loops or eliminate them
# def fibonacci(number)
#   if number == 1 || number == 2
#     1
#   else
#     fibonacci(number - 1) + fibonacci(number- 2)
#   end
# end
#ask if there's a way to calculate this better

PHI = 1.6180339887498948482045868

def fibonacci(number)

  ((PHI**number - (1 - PHI )**number) / Math.sqrt(5)).round

end

puts Benchmark.measure { fibonacci(1000) }
