class School
  attr_reader :age, :phase, :salary, :target_raise
  attr_accessor :name
  
   def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
   end 
end


