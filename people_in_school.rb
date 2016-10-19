require_relative 'greeting'

class PeopleInSchool
  include Greeting

  attr_reader :age, :phase, :salary
  attr_accessor :name

  def initialize(options = {})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

end