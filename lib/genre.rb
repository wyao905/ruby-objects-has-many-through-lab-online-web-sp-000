class Genre
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
  end
end