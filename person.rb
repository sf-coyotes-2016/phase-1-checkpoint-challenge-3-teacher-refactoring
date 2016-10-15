class Person
	attr_reader :age
	attr_accessor :name

	def initialize(args)
		@age = args.fetch(:age, 0)
		@name = args.fetch(:name, "")
	end
end
