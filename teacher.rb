require_relative 'person'

class Teacher < Person
	attr_reader :salary, :target_raise	

	def initialize(options={})
		super
		@target_raise = self.class::TARGET_RAISE
	end

	# def teach_stuff
	#     response = ""
	#     response += "Listen, class, this is how everything works. "
	#     response += "*drops crazy knowledge bomb* "
	#     response += "... You're welcome."
	#     respons
 # 	end	

 	def salary=(new_salary)
    	puts "This better be good!"
    	@salary = new_salary
  	end

	def receive_raise(raise)
		@salary += raise
	end

end
