module Memorable
    def self.reset_all # class method - sets the songs array to empty
    @@songs.clear
  end

    def self.count # class method - calls all and count method on Song class
    self.all.count
  end

   def self.reset_all # class method - sets the artists array to an empty array - clears array
    self.all.clear
  end

  def self.count # class method - counts the indexes of the artists array (.length)
    @@artists.count
  end
  
end 