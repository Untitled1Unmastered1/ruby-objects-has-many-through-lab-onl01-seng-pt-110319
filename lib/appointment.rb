require 'pry'
class Appointment

  attr_reader :patient, :doctor, :date

  @@all = []

  def initialize(doctor = "", patient ="", date = "")
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def patients
    self.patient
  end

  def doctors
    self.doctor
  end
end
# require 'pry'
# class Appointment
#   attr_accessor :date, :patient, :doctor
  
#   @@all = []

#   def initialize(date,patient, doctor)
#     @patient = patient
#     @date = date
#     @doctor = doctor
#     @@all << self
#   end

#   def self.all
#     @@all
#   end
# end