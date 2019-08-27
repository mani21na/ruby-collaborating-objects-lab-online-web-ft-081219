class MP3Importer 
  attr_accessor :path, :files 
  
  def initialize(music_path)
    @path = music_path
    @files = []
  end
  
 def files
    Dir.chdir(@path) do |path|
        @files = Dir.glob("*.mp3")
    end
  end
  
  def import
    @files.each{|file| Song.new_by_filename(file)}
  end
end 