module Memorable

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
  module ClassMethods
    def count
      all.count
    end
    def reset_all
      all.clear
    end
  end

end
