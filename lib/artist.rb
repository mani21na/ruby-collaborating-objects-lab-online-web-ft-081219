class Artist
  attr_accessor :name

   @@all = []

   def initialize(name)
    @name = name
    @@all << self
  end

   def add_song(song)
    song.artist = self
  end

   def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.all
    @@all
  end

   def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || self.new(name)
  end

   def print_songs
    self.songs.each {|song| puts song.name} 
   end
end



=begin 
class Artist 
  attr_accessor = :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def name=(name)
    @name = name
  end  
  
  def self.all
    @@all
  end
  
  def save
    @@all << self 
  end
  
  def add_song(title)
    @songs << title
    title.name = self
  end  
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
end 

=end