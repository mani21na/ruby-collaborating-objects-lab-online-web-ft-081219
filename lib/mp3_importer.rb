class MP3Importer 
  attr_accessor :path, :files 
  
  def initialize(music_path)
    @path = music_path
    @files = []
  end
  
  def files
    Dir["#{@music_path}/*.mp3"]
    
  end
  
  #def import()
  #end
end 