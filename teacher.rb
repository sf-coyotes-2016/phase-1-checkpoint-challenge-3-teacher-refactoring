require_relative 'hiFive'

class Teacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name
  
  include HiFive

   def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

   def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

    def set_performance_rating(rating)
      response = ""
      if rating > self.class:: PERFORMANCE_RATING
        response = "Yay, I'm a great employee!"
        receive_raise(@target_raise)
      else
        response += "Oh, well -- thanks to this actionable, specific, and kind "
        response += "feedback, I'll do better next time."
      end
      response
    end

    def salary=(new_salary)
      puts "This better be good!"
      @salary = new_salary
    end

    def receive_raise(raise)
      @salary += raise
    end

end
