require_relative 'teacher'

class SeniorTeacher < Teacher
  attr_reader :performance_rating
  RATING_LIMIT = 90
  TEACH_STUFF_TEXT = ["Listen, class, this is how everything works, fo SHO! ", "*drops flat-out insane knowledge bomb* ", "... You're welcome. *saunters away*" ]

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
