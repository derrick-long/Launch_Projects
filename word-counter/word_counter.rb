require 'pry'



def word_counter(file_name, number)
  number = number.to_i
  word_list = File.read(file_name)
  word_list.gsub!(/[...(\W.)]/, ' ')
  word_list = word_list.split(' ')
  words_ranked = Hash.new
  compare_list = word_list.uniq

  compare_list.each do |word|
    count = word_list.find_all { |a| a == word }.length
    words_ranked[word] = count
  end

  words_ranked = words_ranked.sort_by {|word| word[1] }.reverse!
   words_ranked[0..number - 1].each do |word, number|
     puts "#{word}: #{number}"
   end

end





if ARGV.size >  0
  word_counter(ARGV[0], ARGV[1])
else
  puts "No arguments were given"
end
