=begin  
 
 From artist.rb: 
  def self.reset_all
    self.all.clear
  end

  def self.count
    @@artists.count
  end
 
 From song.rb:
  def self.reset_all
    @@songs.clear
  end
  
  def self.count
    self.all.count
  end
  
  =end