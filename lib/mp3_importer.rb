class MP3Importer 
  
  attr_reader :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    self.Dir.entries(path)
  end 
  
  
end 