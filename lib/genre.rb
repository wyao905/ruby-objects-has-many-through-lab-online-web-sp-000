class Genre
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def songs
    @songs.select {|song| song.genre == self}
  end
  
  def self.all
    @@all
  end
end