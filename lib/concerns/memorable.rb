module Memorable

  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end  #  End of Memmorable::ClassMethods

  module InstanceMethods
    def initialize
      self.class.all << self

    end
  end  #  End of Memorable::InstanceMethods

end  # End of Module
