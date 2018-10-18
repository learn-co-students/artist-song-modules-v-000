module Findable
  module ClassMethod
    def find_by_name(name)
      artists.all.detect{|a| a.name == name}
    end
  end
    
    module ClassMethod
    def find_by_name(name)
      songs.all.detect{|a| a.name == name}
    end
  end
end