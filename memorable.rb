module Memorable

  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end

  def find_by_name
    self.all.detect{|a| a.name}
  end

end