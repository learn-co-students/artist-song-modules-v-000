module Memorable

  # Important! 
  # The following methods are class methods, but do not use self
  # i.e., find_by_name vs. self.find_by_name
  def find_by_name(name)
    self.all.detect{|a| a.name}
  end

  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end

end