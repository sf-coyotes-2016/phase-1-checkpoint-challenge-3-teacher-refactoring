require_relative 'person'
require_relative 'Highfive'
require_relative 'teacher'

class ApprenticeTeacher < Teacher
   
  include Highfive
  RATING = 80
  RESPONSE = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
  TARGET_RAISE = 800
  PHASE = 3
   
  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
  
end