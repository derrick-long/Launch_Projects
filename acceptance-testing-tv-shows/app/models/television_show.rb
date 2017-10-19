require 'csv'

class TelevisionShow
  GENRES = ["Action", "Mystery", "Drama", "Comedy", "Fantasy"]
  attr_reader :genre
  def initialize(title,network,starting_year,synopsis)
    @title = title
    @network = network
    @starting_year = starting_year
    @synopsis = synopsis
    @genre = nil
  end

  def self.all
    CSV.read('television-shows.csv',:headers => true) #need to read headers here
  end

  def save
    CSV.open('television-shows.csv','a') do |csv|
      csv << [@title,@network,@starting_year,@synopsis,@genre]
    end
  end

  def pick_genre(genre)
  @genre = GENRES.find{|show| show == genre}
  end
end


# butt = TelevisionShow.new("dork","d","a","b")
# butt.pick_genre("Comedy")
# puts butt.genre
