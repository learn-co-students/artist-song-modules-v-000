module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.size
    end
  end

  module InstanceMethods
  end
end
