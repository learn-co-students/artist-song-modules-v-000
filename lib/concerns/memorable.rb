module Memorable
  module ClassMethods
    def self.count #artist class method
      @@artists.count
    end

    def self.count #song class method
      self.all.count
    end

    def self.reset_all #artist class method
      self.all.clear
    end

    def self.reset_all #song class method
      @@songs.clear
    end

  end
end
