class Doctor
  attr_accessor :name, :add_appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end
# require 'pry'
# class Doctor

#   attr_accessor :name
#   @@all = []

#   def initialize(name)
#     @name = name
#     @@all << self
#   end

#   def appointments
#     Appointment.all.select {|appointment| appointment.doctor == self}
#   end
  
#   def patients
#     appointments.select {|appointment| appointment.patient}
#   end

#   def self.all
#     @@all
#   end

#   def new_appointment(patient, date)
#     Appointment.new(patient, date, self)
#   end
# end