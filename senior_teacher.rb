require_relative 'Teacher'

class SeniorTeacher < Teacher
  attr_reader  :performance_rating
  attr_accessor :name

  BENCHMARK_RATING = 90
  TARGET_RAISE = 1000
  
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
