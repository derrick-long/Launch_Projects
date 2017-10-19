#YOUR CODE GOES HERE
def duplicate_counter(array)
  duplicate_count = 0
  array.each_with_index do |number, index|
    if number == array[index+1]
      duplicate_count += 1
    end
  end
    duplicate_count
end
