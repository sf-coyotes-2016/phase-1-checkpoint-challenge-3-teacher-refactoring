require_relative 'educator'

class SeniorTeacher < Educator

  attr_reader  :performance_rating

  RATING_REQUIREMENT = 90

  def initialize(options={})
    super
    @target_raise = 1000
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end
  
end
