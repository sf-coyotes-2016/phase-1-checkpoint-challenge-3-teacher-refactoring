require_relative 'teacher'

class ApprenticeTeacher < Teacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  RESPONSE = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
  RATING = 80

  def initialize(options={})
    super
    @target_raise = 800
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end