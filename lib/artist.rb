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
  
   def self.find(name)
    @@all.find do |artist|
      artist.name == name
    end
  end

  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end



  def print_songs
  self.songs.each do |song|
  puts song.name 
  end 
  end 
    

  

end


