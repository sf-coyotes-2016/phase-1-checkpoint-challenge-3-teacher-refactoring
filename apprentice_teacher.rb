require_relative 'Teacher'

class ApprenticeTeacher < Teacher
  include Teachable

  def initialize(options={})
    super
    @target_raise = 800
    @benchmark_rating = 80
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end

    def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end
end
