require 'pry'
class Appointment
  attr_accessor :date, :patient, :doctor
  
  @@all = []

  def initialize(date,patient, doctor)
    @patient = patient
    @date = date
    @doctor = doctor
    binding.pry 
    @@all << self
  end

  def self.all
    @@all
  end
end