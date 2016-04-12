module Memorable


  def find_by_name(name) 
    all.detect{|a| a.name} 
  end

  def reset_all
    all.clear
  end

  def count
    self.all.count
  end

end

