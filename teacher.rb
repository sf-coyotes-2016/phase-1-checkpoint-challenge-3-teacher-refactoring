require_relative 'person'
class Teacher < Person
  attr_reader :phase, :target_raise, :salary

  def initialize(options={})
    super
    @phase = 3
    @target_raise = 1000
  end

  def teach_stuff
    response = ""
    response += self.class::TEACH_STUFF_TEXT[0]
    response += self.class::TEACH_STUFF_TEXT[1]
    response += self.class::TEACH_STUFF_TEXT[2]
    response
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

  def set_performance_rating(rating)
    response = ""
    if rating > self.class::RATING_LIMIT
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

end
