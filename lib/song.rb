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
    Artist.all.detect{|artist| artist.name == names} || Artist.new(name)
  end
  
  def self.new_by_filename(file_name)
    
    
  end
end 