require_relative 'teacher'

class SeniorTeacher < Teacher
  PHASE = 3
  TARGET_RAISE = 1000
  LISTEN = "Listen, class, this is how everything works, fo SHO! "
  KNOWLEDGE = "*drops flat-out insane knowledge bomb* "
  WELCOME = "... You're welcome. *saunters away*"
  attr_reader :performance_rating

  def set_performance_rating(rating)
    response = ""
    if rating > 90
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
