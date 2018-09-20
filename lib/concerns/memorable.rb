module Memorable
  
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end
  
  module InstanceMethods
    def initialize
      self.class.all << self
      #=> the first 'self' refers to the instance of the class on which I am operating on
    end 
  end
end