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
      # ".all" method may only be called on a class not an instance. Self is an instance so using self.class allows access to class methods
    end
  end
end
