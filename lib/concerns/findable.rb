module Findable
  def find_by_name(name)
    c = self.class_variable_get(self.class_variables.first)
    c.detect{|i| i.name == name}
  end
  
  #def self.find_by_name(name)
   # @@artists.detect{|a| a.name == name}
  #end
  
  #def self.find_by_name(name)
   # @@songs.detect{|a| a.name == name}
  #end
end