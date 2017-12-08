module Findable 
 
  def self.find_by_name(name) # class method - goes through the artists array and returns the name of the artist
    @@artists.detect{|a| a.name == name}
  end
  
    def self.find_by_name(name) # class method - iterates over the songs array - returns song name attr
    @@songs.detect{|a| a.name == name}
  end
end 