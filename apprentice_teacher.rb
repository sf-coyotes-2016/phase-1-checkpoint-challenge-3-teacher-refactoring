require_relative 'education'
require_relative 'set_performance_rating'
require_relative 'teach_stuff'
require_relative 'receive_raise'

class ApprenticeTeacher < Education
  attr_reader :salary, :target_raise

  include PerformanceRating
  include TeachStuff
  include TeachPhase
  include ReceiveRaise
  include Salary

  RATING = 80
  TEACH_RESPONSE = "Listen, class, this is how everything works. "
  BOMB_RESPONSE = "*drops crazy knowledge bomb* "
  SASSY = "... You're welcome."

  def initialize(options={})
    # @name = options.fetch(:name, "")
    # @age = options.fetch(:age, 0)
    super
    @target_raise = 800
    @phase = 3
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end

  # def offer_high_five
  #   "High five!"
  # end

  # def set_performance_rating(rating)
  #   response = ""
  #   if rating > 80
  #     response = "Yay, I'm a great employee!"
  #     receive_raise(@target_raise)
  #   else
  #     response += "Oh, well -- thanks to this actionable, specific, and kind "
  #     response += "feedback, I'll do better next time."
  #   end
  #   response
  # end

  # def teach_stuff
  #   response = ""
  #   response += "Listen, class, this is how everything works. "
  #   response += "*drops crazy knowledge bomb* "
  #   response += "... You're welcome."
  #   response
  # end

  # def salary=(new_salary)
  #   puts "This better be good!"
  #   @salary = new_salary
  # end

  # def receive_raise(raise)
  #   @salary += raise
  # end

  # def set_phase(num)
  #   @phase = num
  #   "Cool, I've always wanted to teach phase #{num}!"
  # end