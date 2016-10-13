require_relative 'teachers'

class ApprenticeTeacher < Teacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name
  
  def initialize(options={})
    super
  end

  def receive_raise(raise)
    @salary += raise
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
