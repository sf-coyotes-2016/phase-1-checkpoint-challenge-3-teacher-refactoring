require_relative 'high_fiveable'

class Person
	include HighFiveable

	attr_reader :age, :phase
	attr_accessor :name

	def initialize(options={})
		@age = options.fetch(:age, 0)
		@name = options.fetch(:name, '')
		@phase = self.class::PHASE
	end
end