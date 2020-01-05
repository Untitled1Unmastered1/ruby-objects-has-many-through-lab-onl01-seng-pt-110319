require 'pry'
class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    binding.pry 
    Appointment.new(date, patient, self)
  end
#line 16 reverse arguments if no go 
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end 
  end
  
  def patients
    appointments.map do |appointments|
      appointments.patient 
    end 
  end
end