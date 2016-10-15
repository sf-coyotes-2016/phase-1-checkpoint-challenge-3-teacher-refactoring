require_relative 'educator'

class SeniorTeacher < Educator
  attr_reader :phase, :performance_rating

  TARGET_RAISE = 1000
  REQUIRED_RATING = 90
  RESPONSE = "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"
  PHASE = 3

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end