#
club_table = {
  driver: 200,
  four_wood: 180,
  five_wood: 170,
  two_iron: 170,
  three_iron: 160,
  four_iron: 150,
  five_iron: 140,
  six_iron: 130,
  seven_iron: 120,
  eight_iron: 110,
  nine_iron: 95,
  pitching_wedge: 80,
  sand_wedge: 20,
  putter: 0
  }

  #using the table and distance from the hole
  #write a program when given a distance
  #that tells the user which club to use

puts "How far is the shot?"
shot = gets.chomp.to_i

club_table.each do |club, distance|
  if distance <= shot
    puts "Use the #{club.to_s.gsub("_", " ")}!"
  end
end
#overthought the shit out of this. Note you still have to use to_s.  even in string interpolation!
