class Song 
  
  attr_accessor :name, :artist 

  def initialize(name)
    @name = name 
    end 
    
    def self.new_by_filename(filename)
     splitname = filename.split(" - ")
     song = self.new(split_name[1])
     artist = Artist.find_or_create_by_name(name)
     
     
    end 
  

  
end 
  