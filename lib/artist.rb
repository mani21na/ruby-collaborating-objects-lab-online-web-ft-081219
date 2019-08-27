class Artist 
  attr_accessor = :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def name(name)
    @name = name
  end  
  
  def self.all
    @@all
  end
  
  def add_song(title)
    self.all << title
    title.name = self
  end  
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
end 