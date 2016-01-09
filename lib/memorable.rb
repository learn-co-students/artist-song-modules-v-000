module Memorable

  def find_by_name(name)
    self.all.detect{|a| a.name}
  end

  def reset_all
    all.clear
  end

  def count
    all.count
  end

  

end