class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end
end
# require 'pry'
# class Appointment
#   attr_accessor :date, :patient, :doctor
  
#   @@all = []

#   def initialize(date, doctor, patient)
#     @patient = patient
#     @date = date
#     @doctor = doctor
#     @@all << self
#   end

#   def self.all
#     @@all
#   end
# end