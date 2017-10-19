class Album

  attr_reader :album_name, :artists, :tracks

  def initialize (album_id, album_name, artists)
    @album_id = album_id
    @album_name = album_name
    @artists = artists
    @tracks = []
  end

  def summary
    tracklist = " "
    duration_ms = []
    @tracks.each do |song|
    tracklist +=  "- #{song[:title]} \n"
    duration_ms << song[:duration_ms].to_f
    end
      total_duration = 0
      duration_ms.each do |duration|
      total_duration += duration
      end
          total_minutes = duration_min(total_duration).round(2)
          "Name: #{@album_name}\n Artist(s): #{@artists} \n"  + "Duration(Min): #{total_minutes} \n" + tracklist
  end

  def id
    @album_id
  end



  def duration_min(duration)
    (duration/1000)/60
  end
end
