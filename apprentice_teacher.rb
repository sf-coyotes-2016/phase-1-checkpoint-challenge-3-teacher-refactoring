require_relative 'educator'

class ApprenticeTeacher < Educator
  attr_reader :phase

  TARGET_RAISE = 800
  REQUIRED_RATING = 80
  RESPONSE = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
  PHASE = 3

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
