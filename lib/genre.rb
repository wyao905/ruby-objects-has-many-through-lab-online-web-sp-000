class Genre
  attr_accessor :name
  
  @@all = []
  
  def initialize(song)
    @name = song.name
    @@all << self
    @songs = []
  end
  
  def songs
    @songs
  end
  
  def self.all
    @@all
  end
end