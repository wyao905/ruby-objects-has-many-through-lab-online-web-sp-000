class Patient
  attr_accessor :name
  attr_reader :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def new_appointment(doctor, date)
    n_a = Appointment.new(date, self, doctor)
    appointments << n_a
    n_a
  end
end