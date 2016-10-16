require_relative 'teacher'
class SeniorTeacher < Teacher
  attr_reader :performance_rating

  def initialize(options={})
    super
    @phase = 3
    @target_raise = 1000
  end

  def teach_stuff
    "Listen, class, this is how everything works, fo SHO! " \
      "*drops flat-out insane knowledge bomb* " \
      "... You're welcome. *saunters away*"
  end

  def expected_rating
    90
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
