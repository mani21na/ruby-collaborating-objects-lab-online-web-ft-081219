class MP3Importer 
  attr_accessor :music_path 
  
  def initialize(music_path)
    @music_path = music_path
  
  def files()
    Dir["/path/to/search/*"]
  end
  
  def import()
  end
end 