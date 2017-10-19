require 'pry'
# LOWER_CASE_LETTERS = ('a'..'z').to_a
# UPPER_CASE_LETTERS = ('A'..'Z').to_a
# $cipher = ''

# def if_z(cipher_index, cipher_letter, upper_or_lower = nil)
#   if cipher_index > 25
#     cipher_index = cipher_index - 26
#     if upper_or_lower == "lower"
#       $cipher << LOWER_CASE_LETTERS[cipher_index]
#     else
#       $cipher << UPPER_CASE_LETTERS[cipher_index]
#     end
#   else
#       $cipher << cipher_letter
#   end
# end
#
# def caeser_cipher(string, number)
#
#   string_array = string.split('')
#
#   string_array.each do |letter|
#     lower_case_cipher_letter = LOWER_CASE_LETTERS.find_index(letter)
#     uppercase_cipher_letter = UPPER_CASE_LETTERS.find_index(letter)
#
#     if uppercase_cipher_letter != nil
#
#       cipher_index = uppercase_cipher_letter + number
#       cipher_letter  = UPPER_CASE_LETTERS[cipher_index]
#       if_z(cipher_index, cipher_letter)
#     elsif lower_case_cipher_letter != nil
#       lower_case_cipher_index = lower_case_cipher_letter + number
#       cipher_letter  =  LOWER_CASE_LETTERS[lower_case_cipher_index]
#       if_z(lower_case_cipher_index,cipher_letter, "lower")
#     else
#       $cipher << letter
#     end
#   end
#     $cipher
# end


def change_letter(letter, number)
  lower_case = (97..122).to_a
  upper_case = (65..90).to_a
  if lower_case.include?(letter.ord) || upper_case.include?(letter.ord)
      letter = if_z(letter, number)
  else
    letter = letter
  end
  letter
end

def if_z(letter, number)
  if letter.ord == 90
    letter = (64 + number).chr
  elsif  letter.ord == 122
    letter = (96 + number).chr
  else
    letter = (letter.ord + number).chr
  end
  letter
end


def caeser_cipher(string, number)
     string_array = string.split('')
     string_array.map!{|a| change_letter(a,number) }
     cipher = string_array.join('')
     cipher
end
