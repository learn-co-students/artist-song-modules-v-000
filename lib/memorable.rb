require "pry"

module Memorable

  def reset_all
    all.clear
  end

  def count
    self.all.count
  end

  def find_by_name(name)
      all.detect{|a| a.name}
  end

end
