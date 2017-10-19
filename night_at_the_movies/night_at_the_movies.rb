require 'time'
require 'pry'

#we need titles
#genre
#time playing




class Movie
  attr_reader :title, :genre, :time_playing

def initialize(movie_hash) #change up to take hash as arguement!
  @title = movie_hash[:title]
  @genre = movie_hash[:genre]
  @time_playing = Time.parse(movie_hash[:time_playing].strip)
end

def showing_after(arrival_time)
    if @time_playing >= Time.parse(arrival_time)
    puts  true
    else
    puts false
  end
end

def comedy?
  if @genre == "Comedy"
    puts true
  else
    puts false
  end
end

  def showing_between?(early_time,late_time)
    if @time_playing >= Time.parse(early_time) && @time_playing <= Time.parse(late_time)
      puts true
    else
    puts  false
  end
  end
end



movies = [
  { title: "The Princess Bide", genre: "Comedy", time_playing: "7:00PM"},
  { title: "Troll 2", genre: "Horror", time_playing: "7:30PM"},
  { title: "Pet Cemetery", genre: "Horror", time_playing: "8:15PM"},
  { title: "Flight of the Navigator", genre: "Adventure", time_playing: "8:17PM"},
  { title: "Teen Witch", genre: "Comedy", time_playing: "8:20PM"},
  { title: "The Goonies", genre: "Comedy", time_playing: "8:30PM"},
  { title: "Better Off Dead", genre: "Comedy", time_playing: "8:45PM"},
  { title: "Weekend at Bernies", genre: "Comedy", time_playing: "9:00PM"},
  { title: "The Wizard", genre: "Adventure", time_playing: "9:10PM"}
]


movie_list = []


movies.each do |movie_hash|
  movie_list << Movie.new(movie_hash)
end
