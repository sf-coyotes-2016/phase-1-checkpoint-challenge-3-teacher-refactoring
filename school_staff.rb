require_relative 'people_in_school'

class Staff < PeopleInSchool

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def teach_stuff
    response = ""
    RESPONSE2 += "Listen, class, this is how everything works. "
    RESPONSE3 += "*drops crazy knowledge bomb* "
    RESPONSE4 += "... You're welcome."
    response
  end

end