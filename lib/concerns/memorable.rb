module Memorable
  module ClassMethods #these are...Class Methods
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