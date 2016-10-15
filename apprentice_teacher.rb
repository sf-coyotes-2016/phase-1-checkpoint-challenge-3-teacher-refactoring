require_relative 'Teacher'

class ApprenticeTeacher < Teacher

  TARGET_RAISE = 800
  BENCHMARK_RATING = 80

  def initialize(options={})
    super
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end

# whoops. Silly mistake from not proofing this. Definitely on board with clear, consistent indentation
  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

end