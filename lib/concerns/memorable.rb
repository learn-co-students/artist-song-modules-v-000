module Memorable
  module ClassMethods

    def count
      self.all.count
    end

    def reset_all
      self.all.clear
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self #adds each instance to it's class upon intialization
    end
  end
end
