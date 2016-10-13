require_relative 'people_in_school'

class Teacher < PeopleInSchool
	def initialize(options={})
		super
		@phase = 3
  end

    def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

end