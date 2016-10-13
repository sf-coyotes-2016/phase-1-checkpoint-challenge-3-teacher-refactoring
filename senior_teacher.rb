require_relative 'my_module'
require_relative 'teacher'


class SeniorTeacher < Teacher
attr_reader :performance_rating, :raise

  def initialize(options={})
   super
    @target_raise = 1000
  end


  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
