require_relative 'educator'
require_relative 'school_people'

class SeniorTeacher < Educator 
  include School_Person
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name
  TARGET_RAISE = 1000
  RATING = 90

  def initialize(options={})
    super
  end

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
