class Doctor
  attr_accessor :name, :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    Doctor.all << self
  end
  
  def new(doc_name)
    name = doc_name
    Doctor.all << self
  end
  
  def new_appointment(patient, date)
    appointments << Appointment.new(date, patient, self)
    appointments
  end
  
  def self.all
    @@all
  end
end