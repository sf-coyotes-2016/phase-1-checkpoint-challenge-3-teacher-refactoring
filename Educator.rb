require_relative "person"

class Educator < Person
    attr_reader :salary, :target_raise

    def initialize(options={})
        @target_raise = options.fetch(:target_raise, self.class::TARGET_RAISE)
        @phase = options.fetch(:phase, self.class::PHASE)
        super
    end

    def set_performance_rating(rating)
    response = ""
    if rating > self.class::REQUIRED_RATING
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    response = self.class::RESPONSE
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

end