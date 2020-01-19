require 'pry'
class Patient
  
  attr_accessor :name 
  
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
    binding.pry
  end
  
  def appointments
    Appointment.all.select do |app|
      app.patient == self   
      #binding.pry
    end
  end
  
  def doctors
    appointments.map do |appointment|
      appointment.doctor  
    end
  end
  
end
