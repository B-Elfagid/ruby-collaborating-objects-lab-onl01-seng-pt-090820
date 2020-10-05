class Artist

  attr_accessor :name, :songs

  @@all = [] 

  def initialize(name)
    @name = name
    @songs = [] 
    self.save
  end
  
    def save 
    @@all << self 
  end 
  
 def self.all
    @@all
  end

  def add_song(song)
   @songs << song
   song.artist = self 
  end

    def self.find_or_create_by_name(name)
    self.find_by_name(name) || create_by_name(name)
  end 
  
  def self.find_by_name(name)
    @@ll.detect{|a| a.name == name}
  end
  
  def self.create_by_name(name)
    Artist.new(name)
  end 


  def print_songs()
    puts @songs.collect {|x| x.name}
  end

end


