require_relative "modules"

class SeniorTeacher 
  include Teachers

  attr_reader :age, :salary
  attr_accessor :name, :phase, :target_raise

  RATING = 90
  TARGET_RAISE = 1000

  def initialize(options={}) 
    @phase = options.fetch(:phase, 3)
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = options.fetch(:target_raise, 1000)
    @performance_rating = nil
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

 def set_performance_rating(rating)
    response = ""
    if rating > 90
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end


end

