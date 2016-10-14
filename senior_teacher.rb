require_relative 'teacher'
require_relative 'payment'

class SeniorTeacher < Teacher
  attr_reader :performance_rating

  include Payment

  RATING = 90
  TEACH_RESPONSE = "Listen, class, this is how everything works, fo SHO! "
  BOMB_RESPONSE = "*drops flat-out insane knowledge bomb* "
  SASSY = "... You're welcome. *saunters away*"

  def initialize(options={})
    super
    @target_raise = 1000
    @phase = 3
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end

  # def teach_stuff
  #   response = ""
  #   response += "Listen, class, this is how everything works, fo SHO! "
  #   response += "*drops flat-out insane knowledge bomb* "
  #   response += "... You're welcome. *saunters away*"
  #   response
  # end