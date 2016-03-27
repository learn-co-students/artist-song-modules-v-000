module Memorable

  def self.find_by_name(name)
   @@songs.detect{|a| a.name}
  end

 def self.count
   @@artists.count
  end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name}
  end
  
  def self.reset_all
    self.all.clear
  end

   def self.reset_all
    @@songs.clear
  end
end