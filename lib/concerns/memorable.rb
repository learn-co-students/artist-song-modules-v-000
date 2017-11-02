module Memorable

  module InstanceMethods
  end

  module ClassMethods
    @@artists = []

    def count
      self.all.count
    end

    def reset_all
      self.all.clear
    end
  end
end
