require 'pry'


def bracket_matcher(string)
  letters = string.split(%r{\s*})
  left_counter = 0
  right_counter = 0
  letters.each do |letter|
    if letter == "("
      left_counter += 1
    elsif letter ==  ")"
      right_counter += 1
    end
  end
  match_count = (left_counter + right_counter) / 2
  if match_count > 0
    true
  else
    false
  end

end
