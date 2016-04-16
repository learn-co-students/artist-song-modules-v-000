module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      #binding.pry
      self.all.count
    end
  end
  
  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end


end