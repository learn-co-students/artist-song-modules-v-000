module Findable
  module ClassMethods
    
    def find_by_name(name)
      self.all.detect{|a| a.name == name}
      
      #@@songs.detect{|a| a.name == name}
      #@@artists.detect{|a| a.name == name}
    end
  end
end