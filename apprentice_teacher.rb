require_relative 'senior_teacher'
require_relative "modules"

class ApprenticeTeacher < SeniorTeacher
  include Teachers

  attr_reader :age, :salary
  attr_accessor :name, :phase, :target_raise

  RATING = 80
  TARGET_RAISE = 800

  def initialize(options={})
    super
    @target_raise = 800
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

   def set_performance_rating(rating)
    response = ""
    if rating > 80
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

end

