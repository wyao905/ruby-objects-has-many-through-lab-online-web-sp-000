class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    all << self
  end
  
  def new(doc_name)
    name = doc_name
    all << self
  end
  
  def self.all
    @@all
  end
end