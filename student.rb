require_relative 'school_people'

class Student
  include School_Person
  attr_reader :age, :phase
  attr_accessor :name

  def initialize(options = {})
    @phase = 1 #work into module 
    @age = options.fetch(:age, 0) #add to module
    @name = options.fetch(:name, "") #add to module
  end

  def set_phase(num) #work into module 
    response = ""
    if num == @phase
      response += "I'm doing phase #{@phase} again because "
      response += "I put my learning first. I'm gonna rock it!"
    else
      response = "Oooh, phase #{num}. I hope I'm ready!"
    end
    @phase = num
    response
  end

  def learn_stuff
    response = ""
    response += "WHOA! I've never thought of it quite like that before. "
    response += "Now I feel like a genius!"
    response
  end
end
