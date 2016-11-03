module Findable
  def find_by_name n
    self.all.detect{|a| a.name == n}
  end
end
