require 'pry'
def firstDuplicate(a)
  possible = (1..a.length).to_a
  a.each do |number|

end
  # duplicates = a.find_all{ |num| a.count(num) > 1 }
  # index_2 = 0
  # tracker = 0
  # dupe_index = []
  # duplicates.length.times do
  #   duplicates.each_with_index do |number, index|
  #     if number == a[index_2]
  #         tracker += 1
  #         if tracker > 1
  #           dupe_index << index
  #         end
  #     end
  #   end
  #   index_2 += 1
  #   tracker = 0
  # end
  #   if dupe_index.empty?
  #     -1
  #   else
  #     dupe_index.sort!
  #     duplicates[dupe_index.first]
  #   end

  #from here I need to iterate through my dupes
  #finding the first duplicate that I run into and return it


#   duplicates = []
#   tracker = 0
#   index = 0
#   #close need to account for it hitting numbers twice
#   a.length.times do
#       a.each do |number|
#         if number == a[index]
#           tracker += 1
#           if tracker > 1 && duplicates.find {|e| e == number }.nil?
#
#             duplicates <<  number
#           end
#         end
#       end
#     index += 1
#     tracker = 0
#   end
#     if duplicates.empty?
#       -1
#     else
#       duplicates.first
#     end
# end

#so im thinking about comboing both methods
#basically double iterate, put this inside another loop



a = [8, 4, 6, 2, 6, 4, 7, 9, 5, 8]
#no idea why this returns 2

puts firstDuplicate(a)

#delete all non dupes in original array
