def plus_two(number)
  number + 2
end

def subtract_or_multiply_by_two(number)
  if number < 0
    number - 2
  elsif number == 0
    number * 2
  else
    number * 2
  end
end

def repeat_last_word(sentence) #not great lol
  words = sentence.split(' ')
  last = words.last
  sentence + " "+last
end

def return_value_of_type(value)
if value == :string
 "string"
elsif value == :fixnum
   1
 else
   "input does not match any Ruby class"
  end
end

def add_five_and_ten(number_array)
  number_array << 5 << 10
end
