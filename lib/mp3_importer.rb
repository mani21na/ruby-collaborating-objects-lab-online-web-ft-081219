class MP3Importer 
  attr_accessor :music_path 
  
  def initialize(music_path)
    @music_path = music_path
  
  def files
    Dir["#{@music_path}/*.mp3"]
  end
  
  def import()
  end
end 