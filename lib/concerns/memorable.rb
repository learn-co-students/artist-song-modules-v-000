module Memorable

  module SongMethods
   
   def self.find_by_name(name)
    @@songs.detect{|a| a.name}
   end

    def self.reset_all
      @@songs.clear
    end

   def self.count
      @@artists.count
   end

  end 
  
  module ArtistMethods

    def self.find_by_name(name)
      @@artists.detect{|a| a.name}
    end

    def self.reset_all
      self.all.clear
    end

    def self.count
      @@artists.count
    end
  end
end