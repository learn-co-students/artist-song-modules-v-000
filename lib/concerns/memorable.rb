module Memorable
  module ClassMethods
    # def count #artist class method
    #   @@artists.count
    # end
    #
    # def count #song class method
    #   self.all.count
    # end

    def count
      self.all.count
    end

    # def reset_all #artist class method
    #   self.all.clear
    # end
    #
    # def reset_all #song class method
    #   @@songs.clear
    # end

    def reset_all
      self.all.clear
    end

  end
end
