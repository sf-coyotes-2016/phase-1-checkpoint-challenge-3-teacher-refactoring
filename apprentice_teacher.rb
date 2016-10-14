require_relative 'teacher'

class ApprenticeTeacher < Teacher

  def initialize(options = {})
    super
    @target_raise = 800
    @rating_bar = 80
  end

  def attend_training_session
    "Whoa. I know ruby-fu"
  end
end
