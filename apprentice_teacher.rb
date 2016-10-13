require_relative 'senior_teacher'
require_relative "modules"

class ApprenticeTeacher < SeniorTeacher
  include Teachers

  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  RATING = 80
  # TARGET_RAISE = 800

  def initialize(options={})
    super
    # @age = options.fetch(:age, 0)
    # @name = options.fetch(:name, "")
    @target_raise = 800
    # @phase = 3
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end

