module Memorable
  #clear the array
  module ClassMethods
    def reset_all
      self.all.clear
    end

    #return the length of the array
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
