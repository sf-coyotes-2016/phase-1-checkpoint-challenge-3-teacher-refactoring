require_relative "educator"
require_relative "education_system"

class SeniorTeacher < Educator
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name
  include EducationSystem

  TARGET_RAISE = 1000
  PHASE = 3
  RATING = 90
  RESPONSE = "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"

  def initialize(options={})
    super
  end


  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
