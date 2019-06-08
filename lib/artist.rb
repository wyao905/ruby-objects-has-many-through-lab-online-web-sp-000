require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    songs << song
    song
  end
  
  def genres
    songs.each {|song| Genres.all << song.genre if !Genres.all.include?(song.genre)}
    all_genres
  end
  
  def self.all
    @@all
  end
end