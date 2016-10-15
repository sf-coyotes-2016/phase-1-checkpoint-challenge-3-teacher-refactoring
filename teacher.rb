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
    # Creating this as an instance variable depend on the model we're working with. If our raise schedule
    # and evaluation criteria are the same for every teacher, a class variable or constant
    # are best. If they very, there's a legitimate reason to create a unique instance variable for
    # each teacher. 


    # LAWL then I read more about class variables vs constants and worked it out.
    # A class variable that will only be reset once or twice a year could just as well 
    # be a constant and will likely cause fewer problems within a framework like rails. 
    # BENCHMARK_RATING = 90
    # TARGET_RAISE = 1000
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
    if rating > benchmark_rating
      receive_raise(target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

  def benchmark_rating
    # This should actually have a custom message in the name error saying something
    # to the effect of the target raise wasn't defined in the concrete class. I haven't
    # figured out how to make it take the constnt value from the subclass without redefining that method. 

    self.class::BENCHMARK_RATING || "Not implemented in subclass"
  end

  def target_raise
    # This should actually have a custom message in the name error saying something
    # to the effect of the target raise wasn't defined in the concrete class
    self.class::TARGET_RAISE || "Not implemented in subclass"

    # "Not implemented in subclass"
  end
end
