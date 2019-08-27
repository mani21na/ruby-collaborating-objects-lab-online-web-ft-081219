class MP3Importer 
  attr_accessor :path, :files 
  
  def initialize(music_path)
    @path = music_path
    @files = []
  end
  
  def files
    with_path = Dir["#{@music_path}/*.mp3"]
    @files
  end
  
  #def import()
  #end
end 