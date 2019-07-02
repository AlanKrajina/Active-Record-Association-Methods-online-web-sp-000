class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    
    artists_array=[]
    self.artists.collect do |ime|
     artists_array << ime.name    
    end 

  end
  
  #  artists = self.artists.collect do |artist|
  #    artist.name
  #    end
  #  end
  
end
