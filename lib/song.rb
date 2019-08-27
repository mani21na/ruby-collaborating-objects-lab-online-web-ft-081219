

class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  def self.new_by_filename(file_name)
    file_name_array = file_name.split(" - ")
    new_song = self.new(file_name_array[1])
    new_song.artist = file_name_array[0]
  end
end 