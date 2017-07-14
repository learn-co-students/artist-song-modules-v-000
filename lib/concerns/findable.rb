module Findable
  module ClassMethods

    def find_by_name(artist_or_song)
      self.all.detect{|a| a.name == artist_or_song}
    end
    
  end
end
