require_relative 'educator'
require_relative 'school_people'

class ApprenticeTeacher < Educator 
  include School_Person
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name
  TARGET_RAISE = 800
  RATING = 80
  RESPONSE = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."

  def initialize(options={})
    super
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
