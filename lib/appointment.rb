require 'pry'
class Appointment
  attr_accessor :date, :patient, :doctor
  
  @@all = []

  def initialize(date, doctor, patient)
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
    binding.pry 
  end

  def self.all
    @@all
  end
end