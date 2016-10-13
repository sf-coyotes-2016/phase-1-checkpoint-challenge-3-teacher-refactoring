class Educator 
  attr_reader :age, :phase
  attr_accessor :name

  def initialize 
    @phase = 3 
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  

end