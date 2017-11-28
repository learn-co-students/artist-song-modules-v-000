module Memorable
  module ClassMethods

    def reset_all
      self.all.clear
    end

      # def self.reset_all
      #   self.all.clear
      # end

      # def self.reset_all
      #   @@songs.clear
      # end
      
    def count
      self.all.count
    end

      # def self.count
      #   @@artists.count
      # end
      #
      # def self.count
      #   self.all.count
      # end
  end

  module InstanceMethods
    def initialize
      self.class.all << self  #@@artists << self #@@songs << self
    end
  end
end
