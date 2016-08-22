module Memorable
  module ClassMethods

    def reset_all
      self.all.clear
    end

    def count
      @@all.count
    end

  end
end
