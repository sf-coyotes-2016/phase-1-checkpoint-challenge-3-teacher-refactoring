require_relative 'common_point'
require_relative 'teacher'

class ApprenticeTeacher < Teacher

  include Common
  RATING_FACTOR = 80

  def initialize(options={})
    super
    @target_raise = 800
  end

  def teach_stuff
    # response = super
    # response = "Listen, class, this is how everything works. " + response + "... You're welcome."
    # response
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end


  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
