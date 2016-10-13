require_relative 'staff'

class ApprenticeTeacher < Staff
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    super
    # @age = options.fetch(:age, 0)
    # @name = options.fetch(:name, "")
    @target_raise = 800
    @phase = 3
  end

  RATING = 80

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
