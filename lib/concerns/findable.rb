module Findable #Extendable
  def find_by_name(name)
    #@@artists.detect{|a| a.name == name} #Original
    #ObjectSpace.each_object(self).to_a.detect{|a| a.name == name} #This works but doesn't pass, as the object ID is different in the array (prob some copying involved in the OS module)
    self.all.detect{|a| a.name == name}
  end




end
