module Memorable
  @@all = []
  
  def count
    @@all.count
  end
  
  def reset_all
    @@all.clear
  end
  
end