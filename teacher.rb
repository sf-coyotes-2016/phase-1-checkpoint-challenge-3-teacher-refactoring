require_relative 'person'

class Teacher < Person
	attr_reader :salary, :target_raise	

	def initialize(options={})
		super
		@target_raise = self.class::TARGET_RAISE
	end

	def set_phase(num)
	    @phase = num
	    "Cool, I've always wanted to teach phase #{num}!"
 	end

	def teach_stuff
	    response = ""
	    response += self.class::LISTEN
	    response += self.class::KNOWLEDGE
	    response += self.class::WELCOME
	    response
 	end	

 	def salary=(new_salary)
    	puts "This better be good!"
    	@salary = new_salary
  	end

	def receive_raise(raise)
		@salary += raise
	end

end
