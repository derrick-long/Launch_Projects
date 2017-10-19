#playlist constructor takes list of song names as an arguement
#constructor should eliminate any songs not on the list
require 'pry'


class Playlist
  attr_accessor :playlist





  def initialize(user_choice)
    @songs = ["Hello - Lionel Ritchie",
      "Kokomo – The Beach Boys",
      "Girl You Know It’s True – Milli Vanilli",
      "Agadoo – Black Lace",
      "Down Under - Men at Work",
      "Nothing's Gonna Stop Us Now - Starship",
      "Get Outta My Dreams, Get Into My Car - Billy Ocean",
      "I Just Called To Say I Love You - Stevie Wonder",
      "Hangin' Tough - New Kids on the Block",
      "We Built This City - Starship",
      "Wake Me Up Before You Go Go - Wham!",
      "We Didn't Start The Fire - Billy Joel",
      "I Wanna Dance With Somebody - Whitney Houston",
      "U Can't Touch This - MC Hammer"]
    @playlist = []
    user_choice.each do |song|
      if @songs.include?(song)
        @playlist << song
      end
  end
end


def shuffle!
  @playlist.shuffle
end

def play!
  @playlist.shift
end

def add_track(track_name)
  @songs.each do |song|
  if @songs.include?(track_name)
    @playlist << song
  end
end
end

end



user_choice = [  "We Built This City - Starship",
  "Wake Me Up Before You Go Go - Wham!",
  "We Didn't Start The Fire - Billy Joel",
  "I Wanna Dance With Somebody - Whitney Houston",
  "U Can't Touch This - MC Hammer"]











binding.pry
