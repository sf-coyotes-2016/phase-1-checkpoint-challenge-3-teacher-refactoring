require_relative 'person'

class Teacher < Person
	attr_reader :salary, :target_raise	

	def initialize(options={})
		super
		@target_raise = self.class::TARGET_RAISE
	end

end