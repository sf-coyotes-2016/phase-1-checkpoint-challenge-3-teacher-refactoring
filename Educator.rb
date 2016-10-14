require_relative "person"

class Educator < Person

    def initialize(options = {})
        @target_raise = options.fetch(:target_raise, self.class::TARGET_RAISE)
        super
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

end