module Memorable

  def find_by_name(name)
    self.detect{|a| a.name}
  end

  def self.reset_all
    self.clear
  end

  def self.count
    self.all.count
  end

end