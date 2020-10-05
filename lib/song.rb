class Song 
  
  attr_accessor :name, :artist 

  def initialize(name)
    @name = name 
    end 
    
    def self.new_by_filename(filename)
     splitname = filename.split(" - ")
     self.new(split_name(1))
     
    end 
  

  
end 
  