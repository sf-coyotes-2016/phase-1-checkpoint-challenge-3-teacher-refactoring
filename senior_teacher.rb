require_relative 'teachers'
class SeniorTeacher < Teacher
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name

  def initialize(options={})
    super
  end

  def receive_raise(raise)
    @salary += raise
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
