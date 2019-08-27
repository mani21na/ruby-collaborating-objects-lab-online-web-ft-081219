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