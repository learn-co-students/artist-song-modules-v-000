module Memorable

  def find_by_name(name)
    # @@artists.detect{|a| a.name}
    # @@songs.detect{|a| a.name}
    self.all.detect{|a| a.name}
  end
  
  def reset_all
    self.all.clear  
     # @@songs.clear  
  end

  def count
    # @@artists.count
    self.all.count
  
  end
end