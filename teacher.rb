require_relative 'dbc'

class Teacher < DbcPerson
	attr_reader :salary

	def initialize(options={})
		super
		@phase = 3
	end

	def set_phase(num)
    	@phase = num
    	"Cool, I've always wanted to teach phase #{num}!"
  	end

  	def teach_stuff
  		self.class::RESPONSE
  		# "Listen, class, this is how everything works.#{@addition} *drops flat-out insane knowledge bomb* ... You're welcome. #{@addition2}"
  	end

  	def set_performance_rating(rating)
    if rating > self.class::RATING
      	receive_raise(@target_raise)
      	"Yay, I'm a great employee!"
    else
      	"Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
  end

  	def receive_raise(raise)
    	@salary += raise
  	end

  	def salary=(new_salary)
    	puts "This better be good!"
    	@salary = new_salary
  	end
end