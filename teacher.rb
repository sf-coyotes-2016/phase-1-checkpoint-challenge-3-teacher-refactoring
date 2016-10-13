class Teacher

  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end


 def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

def receive_raise(raise)
    @salary += raise
  end

end
