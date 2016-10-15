require_relative 'person'
require_relative 'Highfive'

class Student < Person
  
  include Highfive
  PHASE = 1

  def set_phase(num)
    response = ""
    if num == @phase
      response = "I'm doing phase 1 again because I put my learning first. I'm gonna rock it!"
      
    else
      response = "Oooh, phase #{num}. I hope I'm ready!"
    end
    @phase = num
    response
  end

  def learn_stuff
    response = "WHOA! I've never thought of it quite like that before. Now I feel like a genius!"
  end
end