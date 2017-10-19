transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:

# * What is the value of the first transaction?
puts transactions.first
# * What is the value of the second transaction?
puts transactions[1]
# * What is the value of the fourth transaction?
puts transactions[3]
# * What is the value of the last transaction?
puts transactions[-1]
# * What is the value of the second from last transaction?
puts transactions[-2]
# * What is the value of the 5th from last transaction?
puts transactions[-5]
# * What is the value of the transaction with index 5?
puts transactions[5]
# * How many transactions are there in total?
puts transactions.length
# * How many positive transactions are there in total?
postitive = 0
transactions.each do |transaction|
  if transaction > 0
    postitive += 1
    end
end
puts postitive

# * How many negative transactions are there in total?

negative = 0
transactions.each do |transaction|
  if transaction < 0
    negative += 1
  end
end
puts negative
# * What is the largest withdrawal?
puts transactions.min {|a, b| a <=> b}
# * What is the largest deposit?
puts transactions.max {|a, b| a <=> b}

# * What is the small withdrawal?
withdrawls = []
transactions.each do |transaction|
  if transaction < 0
    withdrawls << transaction
  end
end

 puts withdrawls.max { |a, b| a <=> b }

# * What is the smallest deposit?
deposits = []
transactions.each do |transaction|
  if transaction > 0
    deposits << transaction
  end
end

puts deposits.min { |a, b| a <=> b }

# * What is the total value of all the transactions?

sum = 0
transactions.each do |transaction|
  sum = sum + transaction
end
puts sum

# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
balance = 239_900
transactions.each do |transaction|
  balance = balance + transaction
end
puts balance

puts "--------------------"
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

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts best_records.length
# * Who are all the artists listed?
best_records.keys
# * What are all the album names in the hash?
best_records.values
# * Delete the `Eminem` key-value pair from the list.
best_records.delete('Eminem')

# * Add your favorite musician and their best album to the list.
best_records['Okkervil River'] = 'Black Sheep Boy'

# * Change `Nirvana`'s album to another.
best_records['Nirvana'] = 'Live and Un-cut'

# * Is `Nirvana` included in `best_records`?
puts best_records.include?('Nirvana')
# * Is `Soundgarden` included in `best_records`?
puts best_records.include?('Soundgarden')
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
if !best_records.include?('Soundgarden')
  best_records['Soundgarden'] = 'Black Hole Sun'
end
puts best_records
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
best_records.each do |artist, album|
if artist.length <= 6
  puts artist
  end
end



# * Which key-value pairs have a value that is greater than 10 characters?
best_records.each do |artist, album|
  if artist.length && album.length > 10
    puts "#{artist} - #{album}"
  end
end
