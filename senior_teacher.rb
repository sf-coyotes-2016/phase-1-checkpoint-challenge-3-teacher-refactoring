require_relative 'person'
require_relative 'Highfive'
require_relative 'teacher'

class SeniorTeacher < Teacher
  attr_reader :performance_rating
  
  include Highfive
  RATING = 90
  RESPONSE = "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"
  TARGET_RAISE = 1000
  PHASE = 3

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end

end