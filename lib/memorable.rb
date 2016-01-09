module Memorable

  def reset_all
    self.all.clear
  end

  def count
    self.all.size
  end

  def find_by_name(name)
    self.all.detect {|a| a.name}
  end

end