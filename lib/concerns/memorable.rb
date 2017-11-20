module Memorable #self. not distinguishing for class method in a module.


  module InstanceMethods
    def initialize
      self.class.all << self
    end
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end

  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end




  end
end
