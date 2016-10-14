require_relative "educator"
require_relative "education_system"

class ApprenticeTeacher < Educator
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name
  include EducationSystem


  TARGET_RAISE = 800
  RATING = 80
  PHASE = 3

  RESPONSE = response = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."

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

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end

teacher = ApprenticeTeacher.new
puts teacher.teach_stuff
