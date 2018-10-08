module Findable 

 def find_by_name(given_name) 
   self.all.detect do |a|
      a.name == name 
      a 
   end 
 end 
 
end 