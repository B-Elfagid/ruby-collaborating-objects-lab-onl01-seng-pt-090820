class MP3Importer 
  
  attr_reader :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    self.Dir.entries(path)
    self.files.delete_if {|file| file == "." || file == ".."}
  end 
  
  
end 