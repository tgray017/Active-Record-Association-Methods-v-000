class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.artists.uniq.size
  end

  def all_artist_names
    self.artists.uniq.collect {|a| a.name}
  end
end
