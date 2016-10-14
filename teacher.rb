require_relative 'personable'

class Teacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  include Personable


  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @phase = self.class.phase
    @target_raise = self.class::TARGET_RAISE
    @salary = options.fetch(:salary, 0)
  end  

  # def self.phase
  #   self.class.phase
  # end  

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    self.salary += self.class::TARGET_RAISE
  end  

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end  

end