require_relative 'educator'
require_relative 'teaching'

class SeniorTeacher < Educator
  include Teaching

  attr_reader  :performance_rating

  RATING_REQUIREMENT = 90
  TEACHER_TYPE = "Senior"

  def initialize(options={})
    super
    @target_raise = 1000
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
