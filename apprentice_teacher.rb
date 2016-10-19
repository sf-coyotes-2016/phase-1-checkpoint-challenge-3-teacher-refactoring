require_relative 'school_staff'

class ApprenticeTeacher < Staff
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name
  RESPONSE2 = "Listen, class, this is how everything works. "
  RESPONSE3 = "*drops crazy knowledge bomb* "
  RESPONSE4 = "... You're welcome."
  RATING = 80

  def initialize(options={})
    # @age = options.fetch(:age, 0)
    # @name = options.fetch(:name, "")
    @target_raise = 800
    @phase = 3
    super
  end

  # def offer_high_five
  #   "High five!"
  # end

  # def set_phase(num)
  #   @phase = num
  #   "Cool, I've always wanted to teach phase #{num}!"
  # end

  # def teach_stuff
  #   response = ""
  #   RESPONSE2 += "Listen, class, this is how everything works. "
  #   RESPONSE3 += "*drops crazy knowledge bomb* "
  #   RESPONSE4 += "... You're welcome."
  #   response
  # end

  # def salary=(new_salary)
  #   puts "This better be good!"
  #   @salary = new_salary
  # end

  # def receive_raise(raise)
  #   @salary += raise
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

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
