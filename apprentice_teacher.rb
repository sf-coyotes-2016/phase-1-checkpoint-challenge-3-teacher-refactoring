require_relative 'SeniorTeacher'

class ApprenticeTeacher < SeniorTeacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    @phase=3
    TARGETRAISE = -200
    @name = options.fetch(:name, "")
    @age = options.fetch(:age, 0)
    RATING -10
  end


  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
