class Genre
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def songs
    @songs = Song.all.select {|song| song.genre == self}
  end
  
  def artists
    songs.
  
  def self.all
    @@all
  end
end