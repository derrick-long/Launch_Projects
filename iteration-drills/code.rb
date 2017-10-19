#Write Ruby<->English answers here as comments in your code
#1 Iterate through each number in the array, then multiply it by 3 and print the result to the terimnal.
#2 For each name in the arrray print the length of the value. (The length of the name in integer form)
#3 For each number in the numbers array add the sum (initalized to zero) with the value from the array, the sum then is the number from the array and will be added to the next in the line, resulting in the total value of numbers in the array.
#4 For each key value pair in the hash, output the name # key and age is #value years old to the terminal.
#5 For each value in the hash, add it to sum (initalized to zero). So as we iterate through sum = the total of the values in the hash. Then we output this new total when the loop is done running to the terimanl.
#6 For each key-value pair in the hash, output name (key) lives on (value) address.

#1 sentences.each do |word|
#   puts #{word}
#end

#2 numbers.each do |phone_number|
#   if phone_number.include?(617)
      # puts "{#phone_number}"
  #  end
#3 numbers.each do |number|
  #   if number % 2 == 1
  #     puts "#{number}"
  #   end
  # end
# 4  ages.each do |name, age|
#     puts "#{name} : #{age}"
#   end
# 5   ages.each do |name, age|
#       if age > 10
#         puts " #{name} : #{age}"
#       end
#     end
# 6 ages.each do |name, age|
#   if age % 2 == 0
#     puts "#{name} : #{age}"
#   end
# end
array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
# sum = 0
# array.each do |number|
#   sum = number + sum
# end
# puts sum
# * How would you print out each value of the array?
# array.each do |number|
#   puts "#{number}"
# end
# * What is the sum of all of the even numbers?
# even_sum = 0
# array.each do |number|
#   if number % 2 == 0
#   even_sum = even_sum + number
#   end
# end
# puts even_sum

# * What is the sum of all of the odd numbers?
# odd_sum = 0
# array.each do |number|
#   if number % 2 == 1
#     odd_sum = odd_sum + number
#   end
# end
# puts odd_sum
# * What is the sum of all the numbers divisble by 5?
# by_5_sum = 0
#
# array.each do |number|
#   if number % 5 == 0
#     by_5_sum = by_5_sum + number
#   end
# end
# puts by_5_sum

# * What is the sum of the squares of all the numbers in the array?
# sum_of_squares = 0
# array.each do |number|
#   square = number * number
#   sum_of_squares = square + sum_of_squares
# end
#
# puts sum_of_squares



  array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew",
    "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:
# array.each do |name|
#   puts "#{name.reverse}"
# end

# * How would you print out each name backwards in `array`?
# total_chars = 0
# array.each do |name|
#   total_chars = name.length + total_chars
# end
# puts total_chars
# * What are the total number of characters in the names in `array`?
# * How many names in `array` are less than 5 characters long?
# less_than_5 = 0
# array.each do |name|
#   if name.length < 5
#     less_than_5 += 1
#   end
# end
# puts less_than_5
# * How many names in `array` end in a vowel?
# vowel_count = 0
# array.each do |name|
#   if name.end_with?("a", "e", "i", "o", "u")
#     vowel_count += 1
#   end
# end
# puts vowel_count
# * How many names in `array` are more than 5 characters long?
# more_than_5 = 0
# array.each do |name|
#   if name.length > 5
#     more_than_5 += 1
#   end
# end
#   puts more_than_5
# * How many names in `array` are exactly 5 characters in length?
# exactly_5 = 0
# array.each do |name|
#   if name.length == 5
#     exactly_5 += 1
#   end
# end
# puts exactly_5


best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

#  Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of the artists?
# puts best_records.keys
# * How would you print out all the names of the albums?
# puts best_records.values
# * Which artist has the longest name?
# puts best_records.select {|artist, album| artist == best_records.values.max}

# * How would you change all the album titles for every artist to `Greatest Hits`?

#look up
# * How would you delete a key-value pair if the artist's name ends in a vowel?
# best_records.delete_if {|artist, album| artist.end_with?("a","e","i","o","u")}
# puts best_records

ages = {"Arch"=>89, "Gretchen"=>93, "Simone"=>12, "Daija"=>96, "Alivia"=>22, "Serena"=>28, "Alek"=>3, "Lula"=>24, "Christian"=>62, "Darryl"=>47, "Otha"=>32, "Evalyn"=>44, "Lincoln"=>27, "Rebeca"=>99, "Beatrice"=>99, "Kelton"=>10, "Zachary"=>18, "Aurelie"=>91, "Dell"=>71, "Lisandro"=>22}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `ages`?
# ages.each do |name, age|
  # puts "#{name}"
# end

# * How would you print out each key-value pair in the format of `<name> is <age> years old.`?
# ages.each do |name, age|
  # puts "#{name} is #{age} years old."
# end
# * How would you print out every person with odd numbered age?
# ages.each do |name, age|
#   if age % 2 == 1
#     puts "#{name} has an odd age #{age}"
#   end
# end
# * How would you delete everyone under 25 years of age?
# ages.delete_if {|name, age| age < 25}
# puts ages

# * What is the name and age of everyone with a name greater than or equal to 5 characters?
# ages.each do |name, age|
#   if name.length >= 5
#     puts "#{name} is #{age} years old and their name is longer than or equal to five characters."
#   end
# end

people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Dominick",
          "Tricia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nietzsche and Dickinson"
  }
}


# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `people`?
puts people.keys
# * How would you print out all the names of `people` and which company they work for?
people.each do |key, value|
  puts "#{key},  #{people[key]["company"]}"
end

# * What are the names of all the children of everyone in `people`?
people.each do |key, value|

  puts "#{key}, #{people[key]["children"]}"
end
# * What are the names of all the companies that people work for?
people.each do |key, value|
  puts "#{people[key]["company"]}"
end
# * How would you convert all the phone numbers to the same standard (pick one)?
people.each do |key, value|
  better_numbers = people[key]["phone"].gsub(".","-").gsub("(", " ").gsub(")", "-") #this is a real shitshow
  puts better_numbers
end


people =
[
    {
          "Derek Wehner" => {
               "phone" => "588-047-7782",
             "company" => "Daniel-Carroll",
            "children" => [
                "Phoebe",
                "Gretchen",
                "Wiley"
            ]
        },
           "Ali Koelpin" => {
               "phone" => "1-127-057-0020",
             "company" => "Rau, Rutherford and Lockman",
            "children" => [
                "Juwan"
            ]
        },
        "Ervin Prohaska" => {
               "phone" => "(393) 630-3354",
             "company" => "Carter Inc",
            "children" => [
                "Virgil",
                "Piper",
                "Josianne"
            ]
        },
          "Hellen Borer" => {
              "phone" => "1-687-825-0947",
            "company" => "Maggio, Ferry and Moen"
        }
    },
    {
        "Elinor Johnson" => {
              "phone" => "819.911.5553",
            "company" => "Pollich Group"
        }
    },
    {
        "Richmond Murray" => {
               "phone" => "1-516-432-2364",
             "company" => "Sporer and Sons",
            "children" => [
                "Kade",
                "Sage"
            ]
        },
            "Nakia Ferry" => {
               "phone" => "134-079-2237",
             "company" => "Hamill, O'Keefe and Lehner",
            "children" => [
                "Rollin"
            ]
        }
    }
]

# Write Ruby code to find out the answers to the following questions:

# * What are the names of everyone in `people`?
puts people[0].keys
# * What are the names of all the children in `people`?
people.each do |person|
  person.each do |key, value| #DOUBLE NESTING SUCCESSSSSSSSSSS
    puts "#{person[key]["children"]}"
  end
end
# * How would you create a new hash called `phone_numbers` that has a key of a name and value of a phone number in `people`?
phone_numbers = {"Nakia Ferry": "134-079-2237"}
puts phone_numbers
# * How would you create a new hash called `employers` that has a key of a name and a value of a company name in `people`?
#going to assume I reached this point in error and call it here- will make a note to ask about it in one on one
# * How would you create a new hash called `children_count` that has a key of a name and a value of the number of children a person has?
#same as above
