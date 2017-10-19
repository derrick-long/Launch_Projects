golf_scores = [
{ par: 5, score: 7 },
{ par: 4, score: 5 },
{ par: 3, score: 3 },
{ par: 4, score: 4 },
{ par: 4, score: 4 },
{ par: 3, score: 2 },
{ par: 4, score: 5 },
{ par: 5, score: 5 },
{ par: 4, score: 5 },
{ par: 5, score: 7 },
{ par: 4, score: 4 },
{ par: 4, score: 4 },
{ par: 3, score: 3 },
{ par: 4, score: 5 },
{ par: 4, score: 5 },
{ par: 4, score: 4 },
{ par: 3, score: 3 },
{ par: 5, score: 6 }
]

total_strokes = 0
total_par = 0

golf_scores.each do |strokes|
  total_strokes += strokes[:score]
  total_par += strokes[:par]

end
total_score = total_strokes - total_par


puts "Your total score was #{total_strokes}"
puts "Your total par was #{total_par}"



if total_strokes > total_par
  puts "You were #{total_score} over par!" #not as elegant as the solution
else
  total_score = total_score * -1 #makes our # positive in the case of being under par
  puts "You were #{total_score} under par!"
end
