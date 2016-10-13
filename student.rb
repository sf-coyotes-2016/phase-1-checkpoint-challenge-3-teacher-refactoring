require_relative 'module_high_five'

class Student
  attr_reader :age, :phase
  attr_accessor :name

  def initialize(options = {})
    @phase = 1
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  # def offer_high_five
  #   "High five!"
  # end

  include Highfive

  def set_phase(num)
    if num == @phase
      p "I'm doing phase #{@phase} again because I put my learning first. I'm gonna rock it!"
    else
      p "Oooh, phase #{num}. I hope I'm ready!"
    end
    # @phase = num
    # response
  end

  def learn_stuff
    p"WHOA! I've never thought of it quite like that before. Now I feel like a genius!"
  end
end
