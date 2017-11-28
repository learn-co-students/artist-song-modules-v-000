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
    end
  end

end



# def initialize
#   @@songs << self
# end
#
#   def initialize
#     @@artists << self
#     @songs = []
#   end
