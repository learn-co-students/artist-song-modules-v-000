module Findable
  def find_by_name(name)
    self.class::ARTISTS.detect{|a| a.name == name}
  end
end
