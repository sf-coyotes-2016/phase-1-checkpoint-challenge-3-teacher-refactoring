require_relative 'education'
require_relative 'set_performance_rating'
require_relative 'teach_stuff'

class SeniorTeacher < Education
  attr_reader :salary, :performance_rating, :target_raise

  include PerformanceRating
  include TeachStuff
  RATING = 90
  TEACH_RESPONSE = "Listen, class, this is how everything works, fo SHO! "
  BOMB_RESPONSE = "*drops flat-out insane knowledge bomb* "
  SASSY = "... You're welcome. *saunters away*"

  def initialize(options={})
    # @age = options.fetch(:age, 0)
    # @name = options.fetch(:name, "")
    super
    @target_raise = 1000
    @phase = 3
  end

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end

  # def set_performance_rating(rating)
  #   response = ""
  #   if rating > 90
  #     response = "Yay, I'm a great employee!"
  #     receive_raise(@target_raise)
  #   else
  #     response += "Oh, well -- thanks to this actionable, specific, and kind "
  #     response += "feedback, I'll do better next time."
  #   end
  #   response
  # end

  # def offer_high_five
  #   "High five!"
  # end

  # def teach_stuff
  #   response = ""
  #   response += "Listen, class, this is how everything works, fo SHO! "
  #   response += "*drops flat-out insane knowledge bomb* "
  #   response += "... You're welcome. *saunters away*"
  #   response
  # end