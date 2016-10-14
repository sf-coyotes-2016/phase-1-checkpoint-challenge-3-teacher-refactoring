require_relative 'high_five'

class Human
include HighFive
attr_reader :age, :phase
attr_accessor :name

  def initialize(options = {})
    @phase = 1
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

end
