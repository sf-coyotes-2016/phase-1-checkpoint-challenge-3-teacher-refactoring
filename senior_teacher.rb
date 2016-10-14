require_relative 'teacher'

class SeniorTeacher < Teacher
  attr_reader :performance_rating

  # here I was hesitating between using interpolation with #{, fo SHO!} 
  # and #{*saunters away*} and then set this in teacher method but couldn't decide what is better practice
  RESPONSE = "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"
  RATING = 90

  def initialize(options={})
    super
    @target_raise = 1000
  end

  def lead_training_session
    "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
