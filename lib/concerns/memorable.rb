module Memorable
  
  module ClassMethods 
    def reset_all # class method - sets the songs array to empty
    self.all.clear
  end

    def count # class method - calls all and count method on Song class
    self.all.count
    end
  end
  
  module InstanceMethods
    
    def initialize 
      self.class.all << self 
  end 
  end 
end 