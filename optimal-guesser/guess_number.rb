require 'pry'

# def median(array)
#   sorted = array.sort
#   mid = (sorted.length - 1)/2.0
#   (sorted[mid.floor] + sorted[mid.ceil]) / 2
# end


def guess_number(min, max)
  # You can call the `check` method with a number to see if it
  # is the hidden value.
  #
  # If the guess is correct, it will return 0.
  # If the guess is too high, it will return 1.
  # If the guess is too low, it will return -1.
  #
  # If you call `check` too many times, the program will crash.
  #
  # e.g. if the hidden number is 43592, then
  #
  # check(50000) # => 1
  # check(40000) # => -1
  # check(43592) # => 0
  #
  # When you've figured out what the hidden number is, return it
  # from this method.
  #how many times do we get to iterate, and I guess, the start guess should be the
  #middle of the pack


  while min <= max
    current_guess = (min + max)/2
    result = check(current_guess)

    return current_guess if result == 0

    if result == 1
      max  = current_guess - 1
    elsif  result == -1
      min  = current_guess + 1
    end
  end

end
