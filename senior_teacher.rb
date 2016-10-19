require_relative 'school_staff'

class SeniorTeacher < Staff
  attr_reader :phase, :target_raise
  RESPONSE2 = "Listen, class, this is how everything works, fo SHO! "
  RESPONSE3 = "*drops flat-out insane knowledge bomb* "
  RESPONSE4 = "... You're welcome. *saunters away*"
  RATING = 90

  def initialize(options={})
    @phase = 3
    @target_raise = 1000    
    super
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
