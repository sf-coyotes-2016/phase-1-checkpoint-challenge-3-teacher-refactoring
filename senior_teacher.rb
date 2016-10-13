require_relative 'educator'
require_relative 'school_people'

class SeniorTeacher < Educator 
  include School_Person
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name
  TARGET_RAISE = 1000
  RATING = 90

  def initialize(options={})
    super
    #@target_raise = 1000
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

#  def set_performance_rating(rating)
#    response = ""
#    if rating > 90
#      response = "Yay, I'm a great employee!"
#      receive_raise(@target_raise)
#    else
#      response += "Oh, well -- thanks to this actionable, specific, and kind "
#      response += "feedback, I'll do better next time."
#    end
#    response
#  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
