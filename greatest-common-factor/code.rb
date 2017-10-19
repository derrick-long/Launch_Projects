require 'pry'


# def greatest_common_factor(num_1, num_2)
#   lower_factor =  num_1
#   if num_1 > num_2
#     lower_factor = num_2
#   end
#
#   factors = (1..lower_factor).to_a.sort!
#   greatest_factor = 0
#
#   factors.each do |factor|
#     if num_1 % factor == 0 && num_2 % factor == 0
#       greatest_factor = factor
#     end
#   end
#   greatest_factor
# # end
#
# def greatest_common_factor(num_1, num_2)
#   lower_factor =  num_1
#   higher_factor = num_2
#   if num_1 > num_2
#     lower_factor = num_2
#     higher_factor = num_1
#   end
#
#
#
#
#
#
#
# end
def greatest_common_factor(a, b)
  a, b = b, a%b  until b == 0
  a
end
