require_relative 'teacher'
require_relative 'payment'

class ApprenticeTeacher < Teacher

  include Payment

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

  # def teach_stuff
  #   response = ""
  #   response += "Listen, class, this is how everything works. "
  #   response += "*drops crazy knowledge bomb* "
  #   response += "... You're welcome."
  #   response
  # end