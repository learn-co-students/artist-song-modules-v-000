=begin  
 
 From artist.rb: 
  def self.reset_all
    self.all.clear
  end

  def self.count
    @@artists.count
  end
  
  def to_param
    name.downcase.gsub(' ', '-')
  end
  
   def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end
 
 From song.rb:
  def self.reset_all
    @@songs.clear
  end
  
  def self.count
    self.all.count
  end
  
  def to_param
    name.downcase.gsub(' ', '-')
  end
  
   def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end
  
  =begin
Instead of requiring individual files within one another, as you may have noticed we did in the previous two code along exercises, we created an environment file to handle those requirements for us.
=end
  =end