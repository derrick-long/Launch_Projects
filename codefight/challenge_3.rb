require 'pry'

def almostIncreasingSequence(a)
  counter = 0
  b = [] #add the numbers that don't break increasing sequence here
    a.each_with_index do |num, index|
      #gotta fix the nil problem
        if num < a[index + 1]
          b << num
        elsif index == 3
          binding.pry
          if num > a[- 2]
            b << num
          else
            counter += 1
          end
        else
          counter += 1
        end

    end

end

#drop first time the number is not increasing, create a new array from all other elements


butt = [1,2,1,2]
puts almostIncreasingSequence(butt)
