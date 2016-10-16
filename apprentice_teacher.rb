require_relative 'teacher'
class ApprenticeTeacher < Teacher

  def initialize(options={})
    super
    @target_raise = 800
    @phase = 3
  end

  def teach_stuff

   "Listen, class, this is how everything works. " \
      "*drops crazy knowledge bomb* " \
      "... You're welcome."
  end

  def expected_rating
    80
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
