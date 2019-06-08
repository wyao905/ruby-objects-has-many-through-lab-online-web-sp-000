class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    Doctor.all << self
  end
  
  def new(doc_name)
    name = doc_name
    Doctor.all << self
  end
  
  def self.all
    @@all
  end
end