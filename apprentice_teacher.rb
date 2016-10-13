require_relative 'teacher'

class ApprenticeTeacher < Teacher
  PHASE = 3
  TARGET_RAISE = 800
  LISTEN = "Listen, class, this is how everything works. "
  KNOWLEDGE = "*drops crazy knowledge bomb* "
  WELCOME = "... You're welcome."

  def set_performance_rating(rating)
    response = ""
    if rating > 80
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
