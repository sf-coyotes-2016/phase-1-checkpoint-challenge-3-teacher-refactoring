require_relative 'staff'

class SeniorTeacher < Staff
  attr_reader :age, :salary,:phase, :performance_rating, :target_raise
  attr_accessor :name

  def initialize(options={})
    super
    @phase = 3
    # @age = options.fetch(:age, 0)
    # @name = options.fetch(:name, "")
    @target_raise = 1000
  end

  RATING = 90

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
