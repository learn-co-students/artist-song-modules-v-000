module Findable
  module ClassMethods
    def find_by_name(name) #define the method find_by_name
      self.all.detect{|a| a.name} #self.all method in @@artists in Artist class and self.all method in @@songs in Songs class
    end

      # def self.find_by_name(name)
      #   @@artists.detect{|a| a.name == name}
      # end

      # def self.find_by_name(name)
      #   @@songs.detect{|a| a.name == name}
      # end
  end
end
