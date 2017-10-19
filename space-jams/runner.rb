#Do not modify this code unless you are attempting the Exceeds Expectation portion of the challenge.

require 'csv'
require_relative 'album'

albums = [] #array of hashes

CSV.foreach('space_jams.csv', headers: true, header_converters: :symbol) do |row|
  track = row.to_hash
  # find an album by matching the album.id with track[:album_id]
  album = albums.find { |a| a.id == track[:album_id] }

  # if the album hasn't been added to the albums array yet, add it
  if album.nil?
    album = Album.new(track[:album_id], track[:album_name], track[:artists])
    albums << album #becomes an array of hashes here named albums. Each item should be a hash correlating to a track.
  end



  # add the track to the album's @tracks instance variable
  album.tracks << track
end

# print out the summary for each album
albums.each do |album|
  puts album.summary
end
