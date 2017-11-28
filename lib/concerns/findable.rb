module Findable
  module ClassMethods

    def find_by_name(name)
      self.artists.detect{|a| a.name == name}
    end  
  
    def find_by_name(name)
      self.songs.detect{|a| a.name == name}
    end
  end
  
end  