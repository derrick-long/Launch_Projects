#print row of dashes for a single arg word
# number of dashes or spaces should equal the amount of characters in word
#optionally takes a list of chars as a second arg that reps the list of guessed letters


def print_puzzle(word,guessed_letters = [])
  word.each_char do |char|
    if guessed_letters.include?(char)
      print "#{char}"
    else
      print "-"
    end
  end
end
