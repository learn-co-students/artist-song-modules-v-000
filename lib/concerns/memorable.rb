module Memorable

 def self.reset_all
   self.all.clear
 end

 def self.count
   self.all.count
 end

 def self.find_by_name(name)
   self.all.detect {|a| a.name}
 end

end
