require_relative 'highfiveable'
# I think the person class creates an additional dependency for the meager benefit of 2 lines 
# and would choose not to do it with what I currently understand (I'd also love to know
# know why I'm wrong in thinking about it that way). 

# That said, if we were implementing it, the Teacher class declaration would look like this:
=begin
require_relative 'person'
class Teacher < Person
  include HighFiveAble

  attr_reader :salary, :phase, :target_raise


  def initialize(options={})
    super
    @phase = 3
    # Decided to use class variables instead of constants because these can and should change with time. Raises should grow with inflation
    @@benchmark_rating = 90
    @@target_raise = 1000
  end

=end

class Teacher
  include HighFiveAble

  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    # Decided to use class variables instead of constants because these can and should change with time. Raises should grow with inflation
    @@benchmark_rating = 90
    @@target_raise = 1000
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
    if rating > @@benchmark_rating
      receive_raise(@@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end
