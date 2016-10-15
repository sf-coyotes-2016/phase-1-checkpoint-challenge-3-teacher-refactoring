require_relative 'teacher'

class SeniorTeacher < Teacher
  PHASE = 3
  TARGET_RAISE = 1000
  LISTEN = ", fo SHO! "
  KNOWLEDGE = "flat-out insane"
  WELCOME = " *saunters away*"
  RATING = 90

  attr_reader :performance_rating

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
