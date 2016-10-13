require_relative 'teacher'

class ApprenticeTeacher < Teacher
  PHASE = 3
  TARGET_RAISE = 800
  LISTEN = ". "
  KNOWLEDGE = "crazy"
  WELCOME = ""
  RATING = 80

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
