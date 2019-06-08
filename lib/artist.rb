require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs, :all_genres
  
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
    songs.each do |song|
      Genre.all << song.genre if !Genre.all.include?(song.genre)
      all_genres << song.genre if !all_genres.include?(song.genre)
    end
    all_genres
  end
  
  def self.all
    @@all
  end
end