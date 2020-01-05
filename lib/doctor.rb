require 'pry'
class Doctor
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|patient| patient.doctor == self}
  end

  def patients
    binding.pry 
    appointments.map {|patient| patient.name }
  end

  def self.all
    @@all
  end

  def new_appointment(date,patient)
    Appointment.new(date,patient,self)
  end
end