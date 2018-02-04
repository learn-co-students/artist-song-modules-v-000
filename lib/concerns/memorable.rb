module Memorable
  module ClassMethods
    def reset_all
      self.class_variable_get(self.class_variables.first).clear
      #@@all.clear || @@songs.clear
    end
  
    def count
      self.class_variable_get(self.class_variables.first).count
      #@@artists.count || @@songs.count
    end
  end
  
  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end