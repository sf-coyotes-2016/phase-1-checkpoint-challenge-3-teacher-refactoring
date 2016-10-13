require_relative 'teacher'


class ApprenticeTeacher < Teacher
  RATING_LIMIT = 80
  TEACH_STUFF_TEXT = ["Listen, class, this is how everything works. ", "*drops crazy knowledge bomb* ", "... You're welcome."]

  def initialize(options={})
    super
    @target_raise = 800
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
