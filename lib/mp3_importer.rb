class MP3Importer 
  attr_accessor :path, :files 
  
  def initialize(music_path)
    @path = music_path
    @files = []
  end
  
  def files
    with_path = Dir["#{@music_path}/*.mp3"]
    with_path.each go |path|
      path.
  end
  
  #def import()
  #end
end 