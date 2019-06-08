class Patient
  attr_accessor :name
  attr_reader :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    Patient.all << self
  end
  
  def new_appointment(doctor, date)
    n_a = Appointment.new(date, self, doctor)
    appointments << n_a
    n_a
  end
  
  def self.all
    @@all
  end
end