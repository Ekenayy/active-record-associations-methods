class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.songs.count do |song|
      #binding.pry
      song.artist
      #binding.pry
    end 
  end

  def all_artist_names
    self.songs.map {|song| song.artist.name}
  end

end
