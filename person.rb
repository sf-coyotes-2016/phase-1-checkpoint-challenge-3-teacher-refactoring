class Person
	attr_reader :age, :phase
	attr_accessor :name

	def initialize(options={})
		@age = options.fetch(:age, 0)
		@name = options.fetch(:name, '')
		@phase = self.class::PHASE
	end

	def offer_high_five
    	"High five!"
  	end

end