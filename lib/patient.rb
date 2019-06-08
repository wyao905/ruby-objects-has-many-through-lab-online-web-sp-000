class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def new_appointment(doctor, date)
    n_a = Appointment.new(date, self, doctor)
    n_a
  end
end