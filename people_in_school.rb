class PeopleInSchool
	attr_reader :age, :phase, :ta
  attr_accessor :name
 def initialize(options = {})
  @phase = options.fetch(:phase,1)
  @age = options.fetch(:age, 0)
  @name = options.fetch(:name, "")
 end

 def offer_high_five
  "High five!"
 end
end

