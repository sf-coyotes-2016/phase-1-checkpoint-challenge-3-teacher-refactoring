require_relative 'senior_teacher'
require_relative 'module_high_five'

class ApprenticeTeacher < SeniorTeacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  
  RESPONSE = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
  # RESPONSE_RAISE = [Yay, I'm a great employee!", ""Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."]
  def initialize(options)
    super
    @target_raise = 800
    # @performance_rating = options.fetch(:performance_rating, 0)
    # # @response2 = 
  end

  # def offer_high_five
  #   "High five!"
  # end
  include Highfive

  # def set_phase(num)
  #   @phase = num
  #   "Cool, I've always wanted to teach phase #{num}!"
  # end

  def teach_stuff
    RESPONSE 
    # response += "Listen, class, this is how everything works. "
    # response += "*drops crazy knowledge bomb* "
    # response += "... You're welcome."
    # response
  end

  # def salary=(new_salary)
  #   puts "This better be good!"
  #   @salary = new_salary
  # end

  # def receive_raise(raise)
  #   @salary += raise
  # end

  def set_performance_rating(rating)
    #I should use here constant but couldn't figure out how to iterrate through an array with responses on time...
    # current_resp = RESPONSE_RAISE.find_index(@response)
    # @response = RESPONSE_RAISE[current_resp + 1]
    response = ""
    if rating > 80
      # RESPONSE2 
      response= "Yay, I'm a great employee!"
      receive_raise(@target_raise)
      # current_resp = RESPONSE_RAISE.find_index(@response)
      # @response = RESPONSE_RAISE[current_resp + 1]
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
      # current_resp = RESPONSE2.find_index(@response)
      # @response = RESPONSE2[current_resp + 2]
    end
    response
  end


  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
