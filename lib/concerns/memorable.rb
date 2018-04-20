module Memorable
  
  @@artists = []
  
  def reset_all
    @@artists.clear
  end
  
  def count
    @@artists.count
  end
  
end