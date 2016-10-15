require_relative 'dbc'

class Teacher < DBCPerson
  attr_reader :salary, :target_raise

  def initialize(options={})
    super
    @target_raise = 0
  end

  def set_performance_rating(rating)
    response = ""
    if rating > self.class::RATING
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end	

  def teach_stuff
    response = ""
    response += self.class::TEACH_RESPONSE
    response += self.class::BOMB_RESPONSE
    response += self.class::SASSY
    response
  end

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def receive_raise(raise)
    @salary += raise
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end
end