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
    Appointment.new(date, name, self)
    
  end
    
  def appointments
    Appointment.all.select do |app|
      app.doctor == self 
      #binding.pry
    end
  end
  
  def patients
    appointments.map do |appointment|
      appointment.patient 
      
      #binding.pry
    end
  end
  
end

