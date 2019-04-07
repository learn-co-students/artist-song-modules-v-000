module Findable
  @@all = []

  def find_by_name(name)
    @@all.detect{|a| a.name == name}
  end

  def all
    @@all
  end
end
