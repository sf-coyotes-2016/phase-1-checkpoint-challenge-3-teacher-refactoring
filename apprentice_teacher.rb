require_relative 'educator'
require_relative 'school_people'

class ApprenticeTeacher < Educator 
  include School_Person
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name
  TARGET_RAISE = 800
  RATING = 80

  def initialize(options={})
    super
  end

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
