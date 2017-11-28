# all #'s in modules need to be generic so their applicable to a variety of code
# child classes inheriting modules #'s 
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
  	end
  end
end