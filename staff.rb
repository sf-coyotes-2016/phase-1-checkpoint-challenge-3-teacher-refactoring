class Staff
  attr_reader :age, :salary, :phase
  attr_accessor :name 

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  def offer_high_five
    "High five!"
  end



end