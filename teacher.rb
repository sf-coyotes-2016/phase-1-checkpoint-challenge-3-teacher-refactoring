module Teacher

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

end
#Did not have time to add similarities within teach_stuff and set_performance_rating
#Looking back, I should have made people a module and teacher
#a parent class.
