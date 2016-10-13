require_relative 'Teacher'

class SeniorTeacher < Teacher
  attr_reader  :performance_rating
  attr_accessor :name

  def initialize(options={})
    super
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
