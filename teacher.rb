require_relative 'high_five'

class Teacher
  include HighFive
  attr_reader :age, :salary, :phase, :target_raise, :rating_bar
  attr_accessor :name

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 1000
    @phase = 3
    @rating_bar = 90
  end

  def set_performance_rating(rating)
    response = ""
    if rating > @rating_bar
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
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