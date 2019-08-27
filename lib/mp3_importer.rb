class MP3Importer 
  attr_accessor :path 
  
  def initialize(music_path)
    @path = music_path
  end
  
  def files
    files = []
    files = Dir["#{@music_path}/*.mp3"]
  end
  
  #def import()
  #end
end 