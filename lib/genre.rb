class Genre
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def songs
    Songs.select {|song| song.genre == self}
  end
  
  def self.all
    @@all
  end
end