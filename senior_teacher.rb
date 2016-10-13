require_relative "modules"

class SeniorTeacher 
  include Teachers

  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  RATING = 90
  # TARGET_RAISE = 1000

  def initialize(options={}) 
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = options.fetch(:target_raise, 1000)
    @performance_rating = nil
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end

end

