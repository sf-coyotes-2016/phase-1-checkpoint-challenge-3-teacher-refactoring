module Teaching

  def teach_stuff
  	if self.class::TEACHER_TYPE == "Apprentice"
   	   response = ""
   	   response += "Listen, class, this is how everything works. "
   	   response += "*drops crazy knowledge bomb* "
   	   response += "... You're welcome."
   	   response
    elsif self.class::TEACHER_TYPE == "Senior"
  	   response = ""
       response += "Listen, class, this is how everything works, fo SHO! "
       response += "*drops flat-out insane knowledge bomb* "
       response += "... You're welcome. *saunters away*"
       response
  	end
  end

end