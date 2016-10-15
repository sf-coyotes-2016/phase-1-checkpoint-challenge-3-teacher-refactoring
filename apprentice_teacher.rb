require_relative 'teacher'

class ApprenticeTeacher < Teacher

  RATING = 80
  TEACH_RESPONSE = "Listen, class, this is how everything works. "
  BOMB_RESPONSE = "*drops crazy knowledge bomb* "
  SASSY = "... You're welcome."

  def initialize(options={})
    super
    @target_raise = 800
    @phase = 3
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end