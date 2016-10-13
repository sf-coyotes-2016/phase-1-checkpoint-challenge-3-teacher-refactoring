require_relative 'module_high_five'

class SeniorTeacher
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name

  RESPONSE = "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"
  # RESPONSE_RAISE = [Yay, I'm a great employee!", ""Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."]
  def initialize(options)
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @phase = 3
    @target_raise = 1000
    # @response_raise
  end

  # def offer_high_five
  #   "High five!"
  # end
  include Highfive

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    RESPONSE
    # response += "Listen, class, this is how everything works, fo SHO! ... You're welcome. *saunters away*"
    # response += "*drops flat-out insane knowledge bomb* "
    # response += "... You're welcome. *saunters away*"
    # response
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
#I should use here constant but couldn't figure out how to iterrate through an array with responses on time...
    # current_resp = RESPONSE_RAISE.find_index(@response)
    # @response = RESPONSE_RAISE[current_resp + 1]
    response = ""
    if rating > 90
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
private
  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
