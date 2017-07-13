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
      self.class.all << self #initialize is an instance method, so we call it on the instance and then use .class.all (instead of Artist.all) to make it more abstract
    end
  end
end
