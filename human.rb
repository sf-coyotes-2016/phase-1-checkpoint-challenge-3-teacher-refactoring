module HighFiveable
  def offer_high_five
    "High five!"
  end
end

module Payable
end


class Human
  attr_accessor :name
  attr_reader :age

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end
end

class Teacher < Human
  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

end
