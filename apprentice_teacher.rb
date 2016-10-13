require_relative 'educator'
require_relative 'teaching'

class ApprenticeTeacher < Educator
  include Teaching
  
  RATING_REQUIREMENT = 80
  TEACHER_TYPE = "Apprentice"

  def initialize(options={})
    super
    @target_raise = 800
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
