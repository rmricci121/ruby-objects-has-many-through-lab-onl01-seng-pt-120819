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
  
  def new_appointment(name, date)
    Appointment.new(name, date, self)
    
  end
    
  def appointments
    Appointment.all.select do |app|
      app.doctor == self 
      
    end
  end
  
  def patients
    appointments.map do |app|
      app.patient 
      
      #binding.pry
    end
  end
  
end

