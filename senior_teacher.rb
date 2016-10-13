require_relative 'educator'
require_relative 'school_people'

class SeniorTeacher < Educator 
  include School_Person
  attr_reader :age, :salary, :phase, :performance_rating, :target_raise
  attr_accessor :name
  TARGET_RAISE = 1000
  RATING = 90
  RESPONSE = "Listen, class, this is how everything works, fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"

  def initialize(options={})
    super
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
