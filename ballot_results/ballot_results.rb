#each row in the array = results for a given precinct. Each item in the row repesents vots for canidates chronologically
#Count on voters in precinct 1
#Winning canidate in precinct 4
# how many voted for mary sue
# how many voted for billy joe
# how many voted for sally Jane
# total number of voters
# who had the most votes overall
#build vote results
vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end
candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

#listout vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index +1 }:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

precinct_one = 0

vote_results[0].each do |vote|
  precinct_one += vote
end
puts "The total votes in precinct one was #{precinct_one}"

#precinct 4 winner

most_votes = vote_results[3].max
candiate_index = vote_results[3].index(most_votes) #uses index result of whatever the .max value of the 4th spot in our array is

puts "#{candidates[candiate_index]} won precinct 4"

 #must be typed this way to access the correct value
#initalizes values
 mary_sue = 0
 sally_jane = 0
 billy_joe = 0
#increments these values the same way we did sums before, but using intergers at a specific index in vote results array correlating to each candidate
vote_results.size.times do |precinct_index| # does this shit 4 times, because it's doing it by the .size of the array nifty
  mary_sue += vote_results[precinct_index][0] # mary sue is always at the top of the index so zeroth place because of her place in the candidates array
  sally_jane += vote_results[precinct_index][1] #same here with sally_jane
  billy_joe += vote_results[precinct_index][2] #ditto for billy Joe
end

puts "Mary Sue had #{mary_sue} total votes!"
puts "Sally Jane had #{sally_jane} total votes!"
puts "Billy Joe had #{billy_joe} total votes!"

total_votes = mary_sue + sally_jane + billy_joe

puts "The total number of votes was #{total_votes}!"

#most votes overall



#just like RPS
if mary_sue > billy_joe && mary_sue > sally_jane
  puts "Mary Sue had the most votes with #{mary_sue}"
elsif billy_joe > mary_sue && billy_joe > sally_jane
  puts "Billy Joe had the most votes with #{billy_joe}"
else
  puts "Sally Jane had the most votes with #{sally_jane} "
end
