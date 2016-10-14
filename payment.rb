module Payable
	def receive_raise(raise)
   	@salary += raise
   end

   def salary=(new_salary)
   	puts "This better be good!"
   	@salary = new_salary
   end
end