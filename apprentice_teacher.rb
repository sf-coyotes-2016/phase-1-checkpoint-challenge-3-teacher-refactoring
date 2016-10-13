require_relative 'module'
require_relative 'teachers'

class ApprenticeTeacher < Teachers

  include FunBehaviors

  RATING_CUTOFF = 80
  SAYING = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."

  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 800
    @phase = 3
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
