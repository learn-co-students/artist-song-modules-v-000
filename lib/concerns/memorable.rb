module Memorable
  module ClassMethods

    def count
      all.size
    end

    def reset_all
      all.clear
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end