class Human
	attr_reader :age
	attr_accessor :name

	def initialize(options={})
    	@age = options.fetch(:age, 0)
    	@name = options.fetch(:name, "")
  	end

	def offer_high_five
	   "High five!"
	end

end

module Settable
	def set_phase(num)
    	@phase = num
    	"Cool, I've always wanted to teach phase #{num}!"
 	end
end

module SalaryUpdatable
	def salary=(new_salary)
    	puts "This better be good!"
    	@salary = new_salary
  	end
end
