module Findable
  def find_by_name(name)
    self.all.detect{|entry| entry.name == name}
  end
end
