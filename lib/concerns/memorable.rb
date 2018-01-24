module Memorable
  module ClassMethods

  #clears out all the artists
    def reset_all
      self.all.clear
    end

  #keeps track of how many artists there are
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
