require_relative 'human'

class Teacher < Human
  attr_reader :salary, :target_raise, :rating_bar

  def initialize(options = {})
    super
    @target_raise = 1000
    @phase = 3
    @rating_bar = 90
  end

  def set_performance_rating(rating)
    if rating > @rating_bar
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

  def teach_stuff
  "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
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

end
