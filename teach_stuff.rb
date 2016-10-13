module TeachStuff
	def teach_stuff
   	response = ""
    	response += self.class::TEACH_RESPONSE
	   response += self.class::BOMB_RESPONSE
	   response += self.class::SASSY
	   response
   end
end